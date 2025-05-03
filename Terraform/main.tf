terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}

provider "github" {
  token = var.github_token
  owner = var.github_owner
}

variable "github_token" {
  type = string
}

resource "github_repository" "nuevo_repositorio" {
  name        = "mi-repo-desde-terraform"
  description = "Repositorio creado automáticamente con Terraform"
  visibility  = "private" # Puede ser "public" o "private"

  # Opcionales
  has_issues   = true
  has_wiki     = true
  auto_init    = true  # Crea un README inicial
}
