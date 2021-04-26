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

Dotfiles aren't backed up by this script. I opted to use a seperate [dotfiles repo](https://github.com/rpbaptist/dotfiles) instead.

