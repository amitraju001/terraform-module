# Resource Group Module

### Description
This module is for deploying `resource group` resource in Azure using Terraform

### Inputs
|Variable Name|Type|Required| Default |Description|
|:------|:------|:-----|:-----|:-----|
| group_name| `string` | `true` | | Resource Group Name
| location | `string` | `true` | | Resource Group Location
| tags | `map(any)` | `false` | {} | Resource Group Tags


### Outputs
|Variable Name|Type| Default |Description|
|:------|:------|:-----|:-----|
| name| `string` | | Name of the created resource group
| location| `string` | | Location of the created resource group
| id| `string` | | Id of the created resource group


### Usage 
```
module "my_resource_group" {
    source = "intelligentmachines/resource-group/azure"
    version = "0.0.1"
    group_name = var.group_name
    location = var.location
    tags = var.tags
}
```