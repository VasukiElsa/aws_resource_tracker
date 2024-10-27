#!/bin/bash
#######################
#Author : Vasuki
#Date : 25 th October 2024
#Version : V1
# This script will report the AWS resource usage.
#######################

#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#List s3 buckets
echo "Print list of s3 buckets" >> resource_tracker
aws s3 ls >> resource_tracker

#list ec2 instance
echo "Print list of ec2 instances" >> resource_tracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resource_tracker

#list AWS Lambda
echo "Print list of lambda functions" >> resource_tracker
aws lambda list-functions >> resource_tracker

#list IAM Users
echo "Print list of IAM Users" >> resource_tracker
aws iam list-users >> resource_tracker
