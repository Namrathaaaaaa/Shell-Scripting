#!/bin/bash

#########################################################################################
# This script will list all the resources in the AWS account 
# Author: Namratha/Devops
# version: v0.0.1

# Following are the supported AWS services by the script 
# 1.EC2
# 2.S3
# 3.DynamoDB
# 4.Lambda
# 5.RDS
# 6.VPC
# 7.CloudFront
# 8.EBS
# 9.ELB
# 10.SNS
# 11.SQS
# 12.CloudWatch
# 13.Route53
# 14.IAM
# 15.CloudFormation

# Usage: ./aws_resource_list.sh <region> <service_name>
# Example: ./aws_resource_list.sh us-east-1 ec2
###########################################################################################


#* Check if the required number of arguments are passed
if [ $# -ne 2]; then
    echo "Usage. $0 <region> <service_name>
    Example: $0 ap-south-1 ec2"
    exit 1
fi


#* Check if AWS cli is installed
if ! command -v aws &> /dev/null ; then
    echo "AWS cli is not installed. Please install it and try again."
    exit 1
fi

#* Check if thw AWS cli is configured
if [! -d ~/.aws];then
    echo "AWS cli is not configured. Please configure it and try again."
    exit 1
fi


#* Execute the AWS cli command based on the service name 

case $2 in 
    EC2)
        aws ec2 describe-instances --region $1
    ;;
    S3)
        aws s3 ls --region $1
    ;;
    DynamoDB)
        aws dynamodb list-tables --region $1
    ;;
    Lambda)
        aws lambda list-functions --region $1
    ;;
    RDS)
        aws rds describe-db-instances --region $1
    ;;
    VPC)
        aws ec2 describe-vpcs --region $1
    ;;
    CloudFront)
        aws cloudfront list-distributions --region $1
    ;;
    EBS)
        aws ebs describe-volumes --region $1
    ;;
    ELB)
        aws elb describe-load-balancers --region $1
    ;;
    CloudFront)
        aws cloudfront list-distributions --region $1
    ;;
    CloudFormation)
        aws cloudformation describe-stacks --region $1
    ;;
    SNS)
        aws sns list-topics --region $1
    ;;
    SQS)
        aws sqs list-queues --region $1
    ;;
    CloudWatch)
        aws cloudwatch describe-alarms --region $1
    ;;
    Route53)
        aws route53 list-hosted-zones --region $1
    ;;
    IAM)
        aws iam list-users --region $1
    ;;

    *)
        echo "Invalid service name. Please check the service name and try again."
        exit 1
    ;;
esac

    




