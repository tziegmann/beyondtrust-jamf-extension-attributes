#!/bin/sh

## beyondtrust-epm-defendpointd-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, BeyondTrust Solutions Engineering
## E-Mail: tziegmann@beyondtrust.com

# This script has been verified to work with Endpoint Privilege Management 5.4+

defendpointd=`plutil -p /usr/local/libexec/Avecto/Defendpoint/1.0/defendpointd.app/Contents/Info.plist | awk '/CFBundleVersion/ {print substr($3, 2, length($3)-2)}'`

echo '<result>'$defendpointd'</result>'