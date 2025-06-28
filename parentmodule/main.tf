module "rgmodule" {
  source  = "../childmodule/resoucegrodup"
  rggroup = var.rggroup
}



module "storagemodule" {
  source       = "../childmodule/storagaccount"
  depends_on   = [module.rgmodule]
  storagegroup = var.storagegroup
}