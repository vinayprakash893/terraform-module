terraform {
    required_version = ">=1.3.0"
    required_providers {
    azurerm = {
        "source" = "hashicorp/azurerm"
        version  = "3.43.0"
    }
    }
    cloud {
    organization = "Cloudtech"

    workspaces {
        name = "azure-terraform-vny-github-actions"
    }
}
}


provider "azurerm" {
    features {}
    skip_provider_registration = true
}

resource "random_string" "uniquestring" {
    length           = 25
    special          = falsesasas
    upper            = false
}

resource "azurerm_resource_group" "rg" {
    name     = "rdsmanvny"
    location = "East US"
}

module "storage_create"{
    source = "./modules/azure-storage-vny"
}
