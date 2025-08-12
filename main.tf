resource "azurerm_resource_group" "chini" {
  name     = "rg-chini"
  location = "West US"
}

resource "azurerm_storage_account" "janu" {
  depends_on               = [azurerm_resource_group.chini]
  name                     = "stoshahil"
  resource_group_name      = azurerm_resource_group.chini.name
  location                 = azurerm_resource_group.chini.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_container" "container" {
  depends_on = [azurerm_storage_account.janu]
  name                 = "contchini"
  storage_account_id   = azurerm_storage_account.janu.id
  container_access_type = "private"
}

