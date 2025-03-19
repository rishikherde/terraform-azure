provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "rg" {
  name = "test-resgrp-24072"
  location = "East US"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "mytfstatesa"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

