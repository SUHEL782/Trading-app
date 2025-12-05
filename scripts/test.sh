#!/bin/bash
ALB_dns=$(terraform output -raw alb_dns)
curl http://$ALB_dns/
curl http://$ALB_dns/health
