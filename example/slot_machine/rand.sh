#!/bin/sh

tmp="${1}"

while :; do
  while ! ln -s "${tmp}"/lock "${tmp}"/lock 2>/dev/null; do :; done
  cat /dev/urandom | LC_CTYPE=C tr -dc '0-9' | fold -w 4 | head -n 1 > "${tmp}"/rand
  rm "${tmp}"/lock
done
