terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.38.0"
    }
  }

}
provider "azurerm" {
  subscription_id = "09098ad9-99a1-43f6-9b36-7c1d79f03953"
  features {}
}

  