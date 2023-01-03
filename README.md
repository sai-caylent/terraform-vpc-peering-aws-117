# terraform-module-template
## How to use this template
1. Generate the new repository based on this template.
2. Edit the files from the root as you need
   1. main.tf
   2. versions.tf
   3. variables.tf
   4. outputs.tf
   5. .tfvars

3. Modify variables in tfvars as you requres.

#for example


name = "cross_account-vpc_peering"

requester_aws_assume_role_arn = "arn:aws:iam::accountID:role/requester-role-vpca"
requester_region = "us-east-2"
requester_vpc_id ="vpc-0ada0f29********"


accepter_aws_assume_role_arn = "arn:aws:iam::accountID:role/accepter-role-vpcb"
accepter_region = "us-east-2"
accepter_vpc_id = "vpc-0110******"

4. run terraform init to download the modules

5. run with terraform plan to view resources

6. run terraform apply to apply resources.

