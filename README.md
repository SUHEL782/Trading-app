One-Click Deployment: Private EC2 + ALB + ASG (Terraform)
------------------------------------------------------------------------------------------------------
GitHub Profile: https://github.com/SUHEL782
This project provisions a complete AWS infrastructure using one click (terraform apply).
A simple REST API runs on private EC2 instances, fronted by an Application Load Balancer (ALB) and an Auto Scaling Group (ASG).
All components are built using Terraform (IaC).

1. Deployment Steps (One-Click Deploy)
--------------------------------------------------------------------------------------------------------------
A. Install Requirements
sudo apt update -y
sudo apt install -y unzip awscli

B. Initialize Terraform
cd terraform/
terraform init

C. One-Click Deploy

Run from the scripts/ directory:

./deploy.sh


This script triggers:

terraform apply -auto-approve


It outputs key deployment details including:

ALB DNS

Public & Private Subnets

Auto Scaling Group Name

Launch Template ID

2. Testing Steps
---------------------------------------------------------------------------------------
Run:

./test.sh


The script automatically fetches the ALB DNS and tests:

/ -> Hello from private EC2!

/health -> ok

Manual test:
---------------------------------------------------------------
curl http://<ALB-DNS>/
curl http://<ALB-DNS>/health

3. Teardown Steps (Avoid AWS Charges)
------------------------------------------------------
To safely remove all resources, run:

./destroy.sh


This executes:

terraform destroy -auto-approve


This deletes the entire stack including the VPC, NAT Gateway, ALB, ASG, and EC2 instances.

Thank you for giving me this opportunity!
----------------------------------------------------------------------------------
