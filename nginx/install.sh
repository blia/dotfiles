#!/bin/sh
#
dir="`pwd`"

brew install nginx

if [ -f  ~/Library/LaunchAgents/blia.nginx.plist ]
  then
  launchctl unload  ~/Library/LaunchAgents/blia.nginx.plist
  rm ~/Library/LaunchAgents/blia.nginx.plist
fi

if [ -f  ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist ]
  then
  launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
  rm ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
fi


ln -s "$dir/nginx/blia.nginx.plist" ~/Library/LaunchAgents/
launchctl load ~/Library/LaunchAgents/blia.nginx.plist

open http://localhost:8080/

exit 0
