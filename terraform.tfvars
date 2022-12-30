region = "us-east-2"

# namespace = "eg"

# stage = "test"

name = "vpc_peering_cross_account"

requester_aws_assume_role_arn = "arn:aws:iam::131578276461:role/requester-role-vpca"
requester_region = "us-east-2"
requester_vpc_id ="vpc-0ada0f29ff0304383"


accepter_aws_assume_role_arn = "arn:aws:iam::931366402038:role/accepter-role-vpcb"
accepter_region = "us-east-2"
accepter_vpc_id = "vpc-011078d05f2a9cf44"


tags = {
  "owner" = "f45"
}