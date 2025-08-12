terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.27.0"
    }
  }

  backend "azurerm" {
        resource_group_name  = "rg-chini"
        storage_account_name = "stoshahil"
        container_name       = "contchini"
        key                  = "terraform.tfstate"
    }
}


provider "azurerm" {

  features {}
  subscription_id = "8620618b-e18e-453b-abb0-ee127f4295c8"

}