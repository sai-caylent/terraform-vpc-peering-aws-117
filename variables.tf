################################################################################
# Define name of the peering connection
################################################################################
variable "namespace" {
  type        = string
  default     = null
  description = "ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique"
}
variable "stage" {
  type        = string
  default     = null
  description = "ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release'"
}

variable "name" {
  type        = string
  default     = null
  description = <<-EOT
    ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.
    This is the only ID element not also included as a `tag`.
    The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input.
    EOT
}
variable "tags" {
  type        = map(string)
  default     = {}
  description = <<-EOT
    Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).
    Neither the tag keys nor the tag values will be modified by this module.
    EOT
}
################################################################################
# Requester variables
################################################################################
variable "requester_aws_assume_role_arn" {
  type        = string
  description = "Requester AWS Assume Role ARN"
}

variable "requester_region" {
  type        = string
  description = "Requester AWS region"
  default     = "us-east-1"
}

variable "requester_vpc_id" {
  type        = string
  description = "Requester VPC ID filter"
}

variable "requester_allow_remote_vpc_dns_resolution" {
  type        = bool
  description = "Allow requester VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the accepter VPC"
  default     = true
}

################################################################################
# accepter variables
################################################################################
variable "accepter_enabled" {
  description = "Flag to enable/disable the accepter side of the peering connection"
  type        = bool
  default     = true
}

variable "accepter_aws_assume_role_arn" {
  type        = string
  description = "Accepter AWS Assume Role ARN"
  default     = null
}

variable "accepter_region" {
  type        = string
  description = "Accepter AWS region"
  default     = "us-east-1"
}

variable "accepter_vpc_id" {
  type        = string
  description = "Accepter VPC ID filter"
}

variable "accepter_allow_remote_vpc_dns_resolution" {
  type        = bool
  description = "Allow accepter VPC to resolve public DNS hostnames to private IP addresses when queried from instances in the requester VPC"
  default     = true
}

