#!/bin/sh

USB_7SEG="${1}"

set -eu

on_exit() {
  :  # なにもしない
}

error_handler() {
  # エラー時の処理
  on_exit
}

trap error_handler EXIT

# ここで通常の処理
head -n 1 < "${USB_7SEG}" > /dev/null

while :; do
  date +%H%M | tee "${USB_7SEG}"
  sleep 1
done

# ここで通常の終了処理
on_exit

# 異常終了時ハンドラの解除
trap '' EXIT
