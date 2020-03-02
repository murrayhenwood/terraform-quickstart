
# comment line

locals {


}



provider "azuread" {}
provider "azurerm" {
  features {}
}

module "az_resource_group" {
  source = "./az_resource_group"
}

module "some_other_resource" {
  source = "./some_other_resource"
  
  resource_group_name = module.az_resource_group.name  
}

  
  
  
  
  
  
  
  
  
  
