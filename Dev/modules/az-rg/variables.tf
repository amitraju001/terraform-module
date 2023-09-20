variable "instances" {
    description="My resource group"
    type=map(object({
        name =string
        location=string
        tags=map(string)
}))
default = {}
}