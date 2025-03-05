terraform {
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
}

provider "azurerm" {
  # Configuration options
  features {
    # we caan add azure credentials

  }
}
provider "aws" {

}