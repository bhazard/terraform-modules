# ami's Module

This terraform module allows us to share ami image ID's across environments.
To use, create a module reference as follows:


    module "east-amis" {
      source = "../modules/amis"
      region = "us-east-1"
    }

Then, reference an ami via `module.east-amis.vpn_ami`.  Available types of AMI's
are:

- vpn
- win2012r2
- sql2014
- sql2016
