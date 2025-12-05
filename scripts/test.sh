#!/bin/bash


cd "$(dirname "$0")/../terraform" || exit 1


ALB_dns=$(terraform output -raw alb_dns | tr -d '\r\n')


echo "ALB DNS: $ALB_dns"


echo "Testing / endpoint"
curl -s http://$ALB_dns/
echo ""
echo "Testing /health endpoint"
curl -s http://$ALB_dns/health
echo ""
