variable "rgroups" {
    description = "Map to create the resource group"
    type = map(object({
      name = string
      location=string
      tags=map(string)
    }))  
    default = {
      idm_tm_centralus = {
        name="rg-idm-api-dev-cus-api-tm-primary",
        location= "centralus"
        tags ={
            environment ="dev"
            platform= "idm"
            application="api"
            resource_tag="RG"
        }        
      },
      idm_core_centralus = {
        name="rg-idm-api-dev-cus-api-core-primary",
        location= "centralus"
        tags ={
            environment ="dev"
            platform= "idm"
            application="api"
            resource_tag="RG"
        }        
      },
      idm_core_eastus = {
        name="rg-idm-api-dev-eus-api-core-primary",
        location= "eastus"
        tags ={
            environment ="dev"
            platform= "idm"
            application="api"
            resource_tag="RG"
        }        
      }
    }
}