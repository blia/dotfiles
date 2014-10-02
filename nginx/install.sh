#!/bin/sh
#
dir="`pwd`"

brew install nginx

# if ! [ -d  ~/Library/LaunchAgents ]; then
#   mkdir ~/Library/LaunchAgents
# fi
#
# if [ -f  ~/Library/LaunchAgents/blia.nginx.plist ]
#   then
#   sudo launchctl unload  ~/Library/LaunchAgents/blia.nginx.plist
#   sudo rm ~/Library/LaunchAgents/blia.nginx.plist
# fi
#
# if [ -f  ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist ]
#   then
#   launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
#   rm ~/Library/LaunchAgents/homebrew.mxcl.nginx.plist
# fi
#
#
# ln -s "$dir/nginx/blia.nginx.plist" ~/Library/LaunchAgents
#
# echo "Allow nginx on port :80"
# sudo chown root:wheel ~/Library/LaunchAgents/blia.nginx.plist
# sudo launchctl load ~/Library/LaunchAgents/blia.nginx.plist

echo "Allow nginx on port :80"

sudo /usr/local/bin/nginx -p /Users/blia/Projects -c /Users/blia/.nginx.conf

open http://localhost:8080/

exit 0
