

# 



resource "azurerm_resource_group" "example" {
  name     = "terraform-workshop-rg"
  location = "Australia East"

  tags = {
    environment = "workshop"
  }
}


out "id" {
 value = azurerm_resource_group.example.id
}

out "name" {
 value = azurerm_resource_group.example.name
}
