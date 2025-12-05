#!/bin/bash
ALB_DNS=$(terraform output -raw alb_dns)
curl http://$ALB_DNS/
curl http://$ALB_DNS/health
