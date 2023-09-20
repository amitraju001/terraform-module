#output "id" {
 #   description = "The Maps of IDs of the resource groups"
 #   value = {for k,v in azurerm_resource_group.az-rg : key=> v.id}  
#}
output "name" {
    description = "The Maps of names of the resource groups"
    value = {for key,value in azurerm_resource_group.az-rg : key=> value.name}  
}

output "location" {
    description = "The Maps of location of the resource groups"
    value = {for key,value in azurerm_resource_group.az-rg : key=> value.name}
  
}

#output "names" {
#  description = "Names of the created resource groups."
#  value = {for k,v in azurerm_resource_group.az-rg : key=> v.name}
#}