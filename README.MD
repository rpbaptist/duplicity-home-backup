# Duplicity home directory backup script

Based on [this tutorial](https://easyengine.io/tutorials/backups/duplicity-amazon-s3/) and [this blog post](http://kappataumu.com/articles/cloud-backups-duplicity-s3.html).

## Instructions

1. Set credentials
2. Provide a list for files to include and/or exclude

## Backups

Run `bin/backup`.

## Restore

Run `bin/restore-all` for all files
Run `bin/restore-file` for a single file or directory

## Verify

Run `bin/verify`

### A note on dotfiles

Dotfiles aren't backed up by this script. I spent some time trying to get it to work and wasn't succesful.

All the while I had the notion that dotfiles might deserve special treatment anyway. So I am leaving those in my ansible repo.

But if you happen to read this and figure it out, please let me know.
