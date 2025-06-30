terraform {
#   backend "azurerm" {
#     resource_group_name  = "rg-terraformstate"
#     storage_account_name = "devops2189"
#     container_name       = "statefile"
#     key                  = "babyshona.tfstate"
#   }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.23.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "1075ec7a-b17a-4f37-bf3f-9d68c4506dc1"
}

module "resource_group" {
  source = "C:/DevOpsInsiders/Batch17/azure-devsecops-batch-17/CodeSamples/Terraform/Class4/resource_group"
}

module "storage_account" {
  depends_on = [module.resource_group]
  source     = "C:/DevOpsInsiders/Batch17/azure-devsecops-batch-17/CodeSamples/Terraform/Class4/storage_account"
}
