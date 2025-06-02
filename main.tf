terraform {
  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.20.0"
    }
    local = {
      source = "hashicorp/local"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "spacelift" {
}

resource "spacelift_context" "test_context" {
  count = 4
  name  = "raw-test-context-${count.index}-6"
}
