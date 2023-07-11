resource "azurerm_storage_account" "storageaccount" {
    name = "storage1"
    resource_group_name= "rdsmanvny"
    location = "East US"
    account_tier = "Standard"
    account_replication_type = "LRS"
}