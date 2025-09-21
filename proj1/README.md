# AWS Resource Listing Scripts

This project contains shell scripts to list various AWS resources in your account.

## Scripts

### aws_list.sh

A comprehensive script that lists AWS resources with automatic AWS CLI installation and configuration.

### aws_resource_list.sh

A streamlined version that requires pre-installed and configured AWS CLI.

## Supported AWS Services

1. EC2
2. S3
3. DynamoDB
4. Lambda
5. RDS
6. VPC
7. CloudFront
8. EBS
9. ELB
10. SNS
11. SQS
12. CloudWatch
13. Route53
14. IAM
15. CloudFormation

## Usage

```bash
./aws_resource_list.sh <region> <service_name>
```

### Example

```bash
./aws_resource_list.sh us-east-1 ec2
```

## Sample Output

<img width="760" height="556" alt="Image" src="https://github.com/user-attachments/assets/912007e7-d568-46d7-9eea-2ea7160a9c0c" />

## Prerequisites

- AWS CLI (automatically installed by aws_list.sh if not present)
- AWS credentials configured
- Appropriate IAM permissions for the resources you want to list

## Author

Namratha/Devops

## Version

v0.0.1
