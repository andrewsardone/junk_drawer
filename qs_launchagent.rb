#!/usr/bin/env ruby -wKU
#
# keep Quicksilver alive with launchd

plist_path = ENV['HOME'] + '/Library/LaunchAgents/com.blacktree.quicksilver.plist'

plist_content = <<-EOS
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN"
    "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>KeepAlive</key>
    <true/>
    <key>Label</key>
    <string>com.blacktree.quicksilver</string>
    <key>ProgramArguments</key>
    <array>
      <string>/Applications/Quicksilver.app/Contents/MacOS/Quicksilver</string>
    </array>
  </dict>
</plist>
EOS

File.open(plist_path, 'w') {|f| f.write(plist_content) }

