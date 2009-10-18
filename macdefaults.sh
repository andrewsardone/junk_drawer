#!/bin/sh

# a series of settings for the Mac OS X
# user defaults system
#
# A good user defaults system resource:
#   Secrets - a defaults settings database
#     http://secrets.blacktree.com/


#### Safari ####

# Show Link URL in Tool Tip
defaults write com.apple.Safari WebKitShowsURLsInToolTips -boolean

#### Dock ####

# New Snow Leopard List-style stack
defaults write com.apple.dock use-new-list-stack -bool YES

# 2D Dock whe positioned at the bottom of the screen
defaults write com.apple.dock no-glass -boolean YES
