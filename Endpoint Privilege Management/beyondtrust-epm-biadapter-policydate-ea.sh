#!/bin/sh

## beyondtrust-epm-biadapter-policydate-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, BeyondTrust Solutions Engineering
## E-Mail: tziegmann@beyondtrust.com

# This script has been verified to work with Endpoint Privilege Management 5.4+

EPMPolicyDate=`cat /Library/Application\ Support/\BeyondTrust/Defendpoint/settings_policy.xml | egrep "<PolicyDateTime>.*</PolicyDateTime>" | sed -e "s/<PolicyDateTime>\(.*\)<\/PolicyDateTime>/\1/" | sed -e "s/^[[:blank:]]*//"`

echo '<result>'$EPMPolicyDate'</result>'