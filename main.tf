terraform {
  required_version = ">= 1.3.0"

  cloud {
    organization = "YOUR_ORG_NAME"

    workspaces {
      name = "vars-demo"
    }
  }

  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

resource "local_file" "example" {
  filename = var.file_name
  content  = var.file_content
}
