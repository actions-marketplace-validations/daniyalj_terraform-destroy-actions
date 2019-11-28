#!/bin/sh -l
git clone https://github.com/$INPUT_ORG_NAME/$INPUT_REPO_NAME
cd $INPUT_REPO_NAME
terraform init && terraform destroy -auto-approve
