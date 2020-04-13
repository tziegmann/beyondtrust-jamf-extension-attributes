#!/bin/sh

## beyondtrust-epm-biadapter-policyname-ea.sh
## version 1.0
## 
## Author: Tom Ziegmann, BeyondTrust Solutions Engineering
## E-Mail: tziegmann@beyondtrust.com

# This script has been verified to work with Endpoint Privilege Management 5.4+

EPMPolicyName=`cat /Library/Application\ Support/\BeyondTrust/Defendpoint/settings_policy.xml | egrep "<PolicyName>.*</PolicyName>" | sed -e "s/<PolicyName>\(.*\)<\/PolicyName>/\1/" | sed "s/^[[:blank:]]*//"

echo '<result>'$EPMPolicyName'</result>'