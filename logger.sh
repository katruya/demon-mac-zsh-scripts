#!/bin/zsh
# logger.sh
# Log everything you do in Terminal.

# Formatted date & time string.
FORMATTED_DATE=`date "+%Y-%m-%d%H%M%S"`

# Archive the previous file
cp ~/logs/zsh-history-${HOST}.log ~/logs/zsh-history-${HOST}.log.${FORMATTED_DATE}.txt

# Begin a new one
script ~/logs/zsh-history-${HOST}.log
