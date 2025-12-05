One-Click Deployment: Private EC2 + ALB + ASG (Terraform)
-------------------------------------------------------------------

This project deploys a complete AWS infrastructure using one click (terraform apply).
A simple REST API runs on private EC2 instances behind an Application Load Balancer (ALB) and an Auto Scaling Group (ASG).
All resources are provisioned through Infrastructure as Code (Terraform).

1. Deployment Steps (One-Click Deploy)
-----------------------------------------------------------
A. Install Requirements
sudo apt update -y
sudo apt install -y unzip awscli

B. Terraform Init
cd terraform/
terraform init

C. One-Click Deploy

Run from the scripts/ folder:

./deploy.sh


This script automatically runs:

terraform apply -auto-approve


It prints:

ALB DNS

Public & Private Subnets

Auto Scaling Group Name

Launch Template ID

2. Testing Steps

Run:

./test.sh


This script fetches the ALB DNS and tests both endpoints:

/ → Hello from private EC2!
/health → ok


Manual test:

curl http://<ALB-DNS>/
curl http://<ALB-DNS>/health

3. Teardown Steps (Avoid AWS Charges)

Run:

./destroy.sh


This script triggers:

terraform destroy -auto-approve


All AWS resources—VPC, NAT Gateway, ALB, ASG, and EC2 instances—are removed safely.

Thank you for giving me this opportunity!
