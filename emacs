#!/bin/sh

# emacs wrapper script
#  starts emacs if it's not running, or starts up
#  a new buffer if it's already running  
# via killdash10 on stackoverflow
# http://stackoverflow.com/questions/116560/open-an-emacs-buffer-when-a-command-tries-to-open-an-editor-in-shell-mode

if [ -z $EMACS_CMD ]; then
  EMACS_CMD="/usr/bin/emacs"
fi

if [ -z $GNUCLIENT_CMD ]; then
  GNUCLIENT_CMD="/usr/bin/emacsclient"
fi

if [ "$1" = "sync" ]; then
    shift 1
    sync=true
else
    sync=false
fi

cmd="${EMACS_CMD} $*"
lsof $EMACS_CMD | grep $USER >/dev/null 2>&1
if [ "$?" -ne "1" ]; then
    cmd="${GNUCLIENT_CMD} $*"
fi

if [ $sync = "true" ]; then
    $cmd
else
    $cmd &
fi
