locals {
  env = {
    default = {
      secret_name = [
       "${terraform.workspace}/your-secret-api"
      ]
      recovery_window_in_days = 0
      tags = {
        product     = "optional-product"
        environment = terraform.workspace
      }
    }

    dev = {
    }      
    qa = { 
    }      
    prod =  {
    }      
  }        
  environmentvars = contains(keys(local.env), terraform.workspace) ? terraform.workspace : "default"
  workspace       = merge(local.env["default"], local.env[local.environmentvars])
} 
