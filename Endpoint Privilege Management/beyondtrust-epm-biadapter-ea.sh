#!/bin/sh

## beyondtrust-epm-biadapter-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, BeyondTrust Solutions Engineering
## E-Mail: tziegmann@beyondtrust.com

# This script has been verified to work with Endpoint Privilege Management 5.4+

BIAdapter=`cat /Library/Application\ Support/\BeyondTrust/Defendpoint/settings_app.xml | egrep "<Version>.*</Version>" |sed -e "s/<Version>\(.*\)<\/Version>/\1/"|tr -d " "|tr -d "\t"|tr -d "\n"|tr -d "\r"`

echo '<result>'$BIAdapter'</result>'