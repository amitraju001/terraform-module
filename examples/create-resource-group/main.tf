provider "azurerm" {
    version = "~> 1.23"
    use_msi = true
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
    client_id = var.client_id
    client_secret = var.client_secret
}

module "my_resource_group" {
    source = "./modules/azure-resource-group"
    
    group_name = var.group_name
    location = var.location
}