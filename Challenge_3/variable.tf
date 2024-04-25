variable "region" {
  type = string
  description = "The region where EC2 will be deployed"
}
variable "ami" {
  type = string
  description = "AMI id for the EC2 instance"
}
variable instance_type {
  type = string
  description = "Type of the EC2 instance"
}
