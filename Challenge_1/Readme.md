# KodeKloud Terraform Challenge 1

## Description

This Terraform Challenge includes deployment of several Kubernetes resources.

## Requirements

- Terraform version: 1.1.5 installed on controlplane
- Configure terraform to use hashicorp/kubernetes provider, provider's local name: kubernetes, version: 2.11.0, kubeconfig file: /root/.kube/config
- For Frontend: Deployment Labels = name: frontend, Replicas: 4, Pod Labels = name: webapp, Image: kodekloud/webapp-color:v1, Container name: simple-webapp, Container port: 8080
- For Service: Service name: webapp-service, Service Type: NodePort, Port: 8080, NodePort: 30080

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

![Diagram](https://github.com/techydebojit/screenshots/blob/main/k8s_diagram.png?raw=true)

![Output](https://github.com/techydebojit/screenshots/blob/main/k8s_output.png?raw=true)
