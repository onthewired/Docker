#!/bin/bash
src=/mnt
dest="swift://$1"

duplicity --allow-source-mismatch --no-encryption --verbosity notice \
          --full-if-older-than 7D \
          --num-retries 3 \
          --asynchronous-upload \
         "${src}" "${dest}"
