module "instance" {
    for_each    = var.component
    source      = "git::https://github.com/SRINU42/app-tfmodule.git"
    component   = each.key
    env         = var.env
    tags        = each.value["tags"]
}