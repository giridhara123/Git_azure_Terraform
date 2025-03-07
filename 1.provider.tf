terraform {
  required_version = "~>1.11.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.89.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg1"
    storage_account_name = "tfstaterg1"
    container_name       = "tfstate"
    key                  = "tfstaterg1"
  }
}


provider "azurerm" {
  # Configuration options
  features {
    # we caan add azure credentials
    #
  }
}
provider "aws" {

}