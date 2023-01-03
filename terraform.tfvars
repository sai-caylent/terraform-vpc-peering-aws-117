
namespace = "F45"

stage = "Production"

name = "cross_account-vpc_peering"

requester_aws_assume_role_arn = "arn:aws:iam::XXXXX:role/requester-role-vpca"
requester_region = "us-east-2"
requester_vpc_id ="vpc-0ada0f29ff0304383"


accepter_aws_assume_role_arn = "arn:aws:iam::YYYYYY:role/accepter-role-vpcb"
accepter_region = "us-east-2"
accepter_vpc_id = "vpc-011078d05f2a9cf44"


tags = {
  "owner" = "F45"
  "project" = "F45"
}