terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }

    backend "s3" {
    bucket = "terraformstatenoahs"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Configure the GitHub Provider
provider "github" {
  token = var.token
}

resource "github_repository" "example" {
  name        = "EKS_TERRAFORM_PROJECT"
  description = ""

  visibility = "public"
}
