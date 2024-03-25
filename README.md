#  What the hack Terraform Solution

## Prerequisites

Before getting started, make sure you have the following tools installed:

- [Terraform](https://www.terraform.io/downloads.html)
- [Packer](https://www.packer.io/downloads.html)

```
// Command to create service principal to run Terraform commands
az ad sp create-for-rbac --name [nameOfServicePrincipal] --role Contributor --scopes /subscriptions/[subscriptionId]
```

## Challenge 1 - 5
Below are the command that's needed for all challenges 

1. Initialize the Terraform working directory by running the following command for the first time:
    ```
    terraform init
    ```

2. Create a Terraform execution plan by running the following command:
    ```
    terraform plan -var-file="variables.tfvars"
    ```

3. Apply the changes defined in your Terraform configuration by running the following command:
    ```
    terraform apply -var-file="variables.tfvars"
    ```

For more information on Terraform and Azure, you can refer to the following resources:

- Terraform Intro: [Terraform Get Started Guide](https://developer.hashicorp.com/terraform/tutorials/azure-get-started)
- Terraform Azure Provider: [Azure Provider Documentation](https://registry.terraform.io/providers/tfproviders/azurerm/latest/docs)
- Challenge 5 VM SSH key generation - https://learn.microsoft.com/en-us/azure/virtual-machines/linux/create-ssh-keys-detailed

## Challenge 6

To build the Packer JSON file, run the following command:
    ```
    packer build packer.json
    ```

For more information on Packer and Terraform:
- Packer Tutorial - https://developer.hashicorp.com/packer/tutorials/docker-get-started
- Azure Packer - https://learn.microsoft.com/en-us/azure/virtual-machines/linux/build-image-with-packer
- Data source terraform usage - https://developer.hashicorp.com/terraform/language/data-sources 


# License
This repository is licensed under MIT license.