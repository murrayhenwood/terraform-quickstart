
# comment line

locals {


}



provider "azuread" {}
provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    storage_account_name = "terraform_storage_account_name_1234"
    container_name       = "terraform_container"
    key                  = "terraform.tfstate"
  }
}


module "az_resource_group" {
  source = "./az_resource_group"
}
  

module "some_other_resource" {
  source = "./az_resource_group"
  
  resource_group_name = module.az_resource_group.name  
}

  
  
  
  
  
  
  
  
  
  
