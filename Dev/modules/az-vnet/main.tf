resource "azurerm_resource_group" "az-rg"{
    for_each=var.instances

    name=each.value.name
    location=each.value.location
    tags=each.value.tags
}