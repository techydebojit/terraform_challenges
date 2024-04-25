## EC2 Challenge

## Description

In this challenge I have implemented a simple EC2 instance with some preinstalled packages.

## Requirements

1. #### ssh-key:
   - Create a terraform key-pair citadel-key with key_name citadel.
   - Upload the public key ec2-connect-key.pub to the resource. You may use the file function to read the the
     public key at /root/terraform-challenges/project-citadel/.ssh
2. #### Instance:
   - AMI: ami-06178cf087598769c
   - use variable named ami
   - Region: eu-west-2
   - use variable named region
   - Instance Type: m5.large
   - use variable named instance_type
   - Elastic IP address attached to the EC2 instance
3. #### Elastic IP:
   - Create a local-exec provisioner for the eip resource and use it to print the attribute called public_dns to a file /root/citadel_public_dns.txt on the iac-server
4. #### User Data:
   - Install nginx on citadel instance, make use of the user_data argument.
   - Using the file function or by making use of the heredoc syntax, use the script called install-nginx.sh
     as the value for the user_data argument.

## Installation

Need to Install terraform version 1.1.5

```bash
  sudo apt-get install unzip
  wget https://releases.hashicorp.com/terraform/1.1.5/terraform_1.1.5_linux_amd64.zip
  unzip terraform_1.1.5_linux_amd64.zip
  sudo mv terraform /usr/local/bin/
  terraform --version
```

## Deployment

To deploy this project run

```bash
  terraform init
  terraform plan
  terraform apply -auto-approve
```

## Screenshots

![Diagram](https://github.com/techydebojit/screenshots/blob/main/aws_infra.png?raw=true)
