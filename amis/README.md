# ami's Module

This terraform module allows sharing ami image ID's across applications.
To use, create a module reference as follows:

    module "east-amis" {
      source = "github:/bhazard/terraform-modules//amis"
      region = "us-east-1"
    }

To reference an ami from the example above, specify a resource attribute as
follows:

    resource "aws_instance" "web" {
      ami = "${module.east-amis.win2016base}"
      instance_type               = "t2.small"
    ...

To retrieve the code for `terraform`, run `terraform get` prior to running any
other `terraform` subcommand.

Then, reference an ami via `module.east-amis.vpn_ami`.  Available types of AMI's
are:

- vpn
- win2012r2
- sql2014
- sql2016
