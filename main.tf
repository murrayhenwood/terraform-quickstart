
# comment line

locals {


}



provider "azuread" {}
provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}

terraform {
  backend "azurerm" {
    storage_account_name = "terraform_storage_account_name_1234"
    container_name       = "terraform_container"
  }
}

module "az_resource_group" {
  source = "./az_resource_group"
}

module "some_other_resource" {
  source = "./some_other_resource"
  
  resource_group_name = module.az_resource_group.name  
}

  
  
  
  
  
  
  
  
  
  
