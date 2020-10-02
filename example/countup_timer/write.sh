#!/bin/sh

tmp="${1}"
usb_7seg="${2}"

date +%s > "${tmp}"/start_time

while :; do
  start_time="$(cat "${tmp}"/start_time)"
  now="$(date +%s)"
  echo "$((now - start_time))" > "${usb_7seg}"
  sleep 1
done
