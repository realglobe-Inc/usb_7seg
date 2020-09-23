#!/bin/sh

USB_7SEG="${1}"

set -eu

on_exit() {
  kill -- -$$
  rm -rf "${tmp}"
}

error_handler() {
  # エラー時の処理
  on_exit
}

trap error_handler EXIT

# ここで通常の処理
tmp="$(mktemp -d)"

: > "${tmp}"/1
: > "${tmp}"/2
: > "${tmp}"/3
: > "${tmp}"/4
: > "${tmp}"/rand

head -n 1 < "${USB_7SEG}" > /dev/null

./write.sh "${tmp}" "${USB_7SEG}" &
./rand.sh "${tmp}" &

echo "PRESS ENTER TO STOP" >&2
echo "PRESS CTRL-C TO QUIT" >&2

p=1;

while read -r l; do
  if test "${p}" -gt 4; then
    p=1
    : > "${tmp}"/1
    : > "${tmp}"/2
    : > "${tmp}"/3
    : > "${tmp}"/4
  else
    while ! ln -s "${tmp}"/lock "${tmp}"/lock 2>/dev/null; do :; done
    cut -b ${p} "${tmp}"/rand > "${tmp}"/${p}
    rm "${tmp}"/lock
    p=$((p+1))
  fi
done

# ここで通常の終了処理
on_exit

# 異常終了時ハンドラの解除
trap '' EXIT
