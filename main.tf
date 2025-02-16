##module "instance" {
##    for_each    = var.component
##    source      = "git::https://github.com/SRINU42/app-tfmodule.git"
##    component   = each.key
##    env         = var.env
##    tags        = merge(each.value["tags"], var.tags)
##}

module "vpc" {

    source      = "git::https://github.com/SRINU42/vpc-tfmodule.git"
    
    for_each    = var.vpc
    cidr_block  = each.value["cidr_block"]
    subnets = each.value["sub"]

    env         = var.env
    tags        = var.tags  
}