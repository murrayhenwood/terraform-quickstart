

# 



resource "azurerm_resource_group" "example" {
  name     = "another-terraform-workshop-rg"
  location = "Australia East"

  tags = {
    environment = "workshop"
  }
}


output "id" {
 value = azurerm_resource_group.example.id
}

output "name" {
 value = azurerm_resource_group.example.name
}
