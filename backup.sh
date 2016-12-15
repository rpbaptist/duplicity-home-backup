#!/bin/bash

main() {
  local duplicity_log="$HOME/.local/log/duplicity.log"
  source "./credentials"

  duplicity \
    --verbosity info \
    --s3-european-buckets \
    --s3-use-new-style \
    --encrypt-key="$GPG_KEY" \
    --sign-key="$GPG_KEY" \
    --asynchronous-upload \
    --full-if-older-than 7D \
    --include-filelist inclusion-list \
    --exclude-filelist exclusion-list \
    --log-file "$duplicity_log" \
    "$@" \
    "$HOME" "$DEST"

  # Reset the ENV variables. Don't need them sitting around
  unset AWS_ACCESS_KEY_ID
  unset AWS_SECRET_ACCESS_KEY
  unset PASSPHRASE
  unset GPG_KEY
  unset DEST

  echo "done"
}

main "$@"
