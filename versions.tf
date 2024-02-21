terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "= 3.90.0"
    }
  }

  required_version = ">= 0.15"

  backend "remote" {
    organization = "bliyaal"

    workspaces {
      name = "learn-sentinel-tfc"
    }
  }
}
