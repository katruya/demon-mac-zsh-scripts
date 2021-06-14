#!/bin/zsh
# logger.sh
# Log everything you do in Terminal.

# REQUIRES THIS COMMAND TO RUN (ALIAS IN ~/.zshrc):
# /usr/bin/script ~/logs/zsh_demon_kat.log && ~/scripts/logger.sh

# Formatted date & time string.
FORMATTED_DATE=`/bin/date "+%Y-%m-%d%H%M%S"`

# Archive the previous file
/bin/cp -f ~/logs/zsh_demon_kat.log.${FORMATTED_DATE}.txt

# Begin a new one
/usr/bin/script ~/logs/zsh_demon_kat.log
