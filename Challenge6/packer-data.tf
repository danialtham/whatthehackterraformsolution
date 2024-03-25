# //NOTE: Linux Image created by packer, data source is used to get the image id and reference it here
# data "azurerm_resource_group" "image" {
#   name = "${azurerm_resource_group.wth-rg.name}"
# }

# data "azurerm_image" "image" {
#   name                = "PackerVMImage"
#   resource_group_name = "${data.azurerm_resource_group.image.name}"
# }