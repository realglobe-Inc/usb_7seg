#!/bin/sh

tmp="${1}"
usb_7seg="${2}"

tail -f "${tmp}"/rand |
while read -r l; do
  echo "${l}" > "${tmp}"/r
  paste -d '\0' "${tmp}"/1 "${tmp}"/2 "${tmp}"/3 "${tmp}"/4 "${tmp}"/r |
    cut -c 1-4 > "${usb_7seg}"
done
