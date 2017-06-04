#!/bin/bash
# Script to find AMI's available within a region
# -----------------------------------------------------------------------------
# Requires aws sdk
# Profile must match an account profile in your ~/.aws/credentials file
PROFILE="sandbox"
REGIONS="us-east-1 us-west-1 us-west-2 ap-southeast-2"
UBUNTUOWNERACCOUNT="099720109477"
OPENVPNOWNERACCOUNT="573553919781"

# Given a Name Pattern to search for, a region and a list of account owners,
# search for a matching AMI and output the region, matching AMI Name and ID
function print_ami_for {
  pat=$1
  region=$2
  owneraccount=$3

  name=$(\
    aws ec2 describe-images --region $region --owners $owneraccount --profile $PROFILE \
        --filters Name=root-device-type,Values=ebs \
            Name=architecture,Values=x86_64 \
            Name=name,Values="$pat" \
      | awk -F ': ' '/"Name"/ { print $2 | "sort" }' \
      | tr -d '",' | tail -1)

  ami_id=$(\
    aws ec2 describe-images --region $region --owners $owneraccount --profile $PROFILE \
        --filters Name=name,Values="$name" \
      | awk -F ': ' '/"ImageId"/ { print $2 }' | tr -d '",')

    echo $region: $name: $ami_id

}

for region in $REGIONS; do
  # Ubuntu
  for pat in "*ubuntu*16.04*" "*ubuntu*14.04*"; do
    print_ami_for "$pat" "$region" "$UBUNTUOWNERACCOUNT"
  done

  # OpenVPN
 for pat in "*OpenVPN Access Server*"; do
   print_ami_for "$pat" "$region" "$OPENVPNOWNERACCOUNT"
 done

done

