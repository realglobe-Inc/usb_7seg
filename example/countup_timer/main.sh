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

date +%s > "${tmp}"/start_time

head -n 1 < "${USB_7SEG}" > /dev/null

./write.sh "${tmp}" "${USB_7SEG}" &
write_pid=$!

echo "PRESS ENTER TO RESET" >&2
echo "PRESS CTRL-C TO QUIT" >&2

while read -r l; do
  kill "${write_pid}"
  wait "${write_pid}" 2>/dev/null > /dev/null || :
  ./write.sh "${tmp}" "${USB_7SEG}" &
  write_pid=$!
  #printf '\033[1T'  # 1行戻る
done

# ここで通常の終了処理
on_exit

# 異常終了時ハンドラの解除
trap '' EXIT
