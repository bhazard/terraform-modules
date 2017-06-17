# module amis
# Provide a shared lookup table of amis to centralize selection across
# environments.
# 
# Regions:
#   us-east-1: Virginia
#   us-east-2: Ohio
#   us-west-1: N. California
#   us-west-2: Oregon
#   ap-southeast-2: Sydney, AU
# -----------------------------------------------------------------------------
variable "region" {
  type = "string"
  default = "us-east-1"
}

# -------------------------
# Windows
# -------------------------

# Windows 2012R2 Plain
variable "win2012r2_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-11e84107"
    "us-west-1" = "ami-052d7565"
    "us-west-2" = "ami-09f47d69"
    "ap-southeast-2" = "ami-a63934c5"
  }
}

# 2016 Base (no containers)
# This is datacenter edition -- there is no other option
variable "win2016base_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-f1b5cfe7"
    "us-east-2" = "ami-799bbc1c"
    "us-west-1" = "ami-09406069"
    "us-west-2" = "ami-c2c3a2a2"
    "ap-southeast-2" = "ami-bf5743dc"
  }
}

# 2016 Base with containers
variable "win2016cont_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-17106201"
    "us-east-2" = "ami-b1d2f5d4"
    "us-west-1" = "ami-1e70517e"
    "us-west-2" = "ami-f081e590"
    "ap-southeast-2" = "ami-d78288b4"
  }
}

# 2016 Nano
variable "win2016nano_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-8d324d9b"
    "us-east-2" = "ami-0fdff86a"
    "us-west-1" = "ami-e3507183"
    "us-west-2" = "ami-d4d1b5b4"
    "ap-southeast-2" = "ami-64ada707"
  }
}

# -------------------------
# Windows with SQL Server
# -------------------------

# SQL 2016 standard on Windows 2016

variable "sql2016_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-67106271"
    "us-west-1" = ""
    "us-west-2" = ""
    "ap-southeast-2" = ""
  }
}

variable "sql2014_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-7dcd646b"  # SQL 2014 on windows 2012R2
    "us-west-1" = "ami-73227a13"
    "us-west-2" = "ami-65820b05"
    "ap-southeast-2" = "ami-27343944"
  }
}

# -------------------------
# OpenVPN
# -------------------------

# OpenVPN Access Server 2.1.4
# Running on Linux
# NB: the OpenVPN instances are on the AWS Marketplace.  If you get the 
# error: OptInRequired,
# you must manually launch one of these instances.  During that process, you
# become "subscribed" to the instance.  Once that has been done one time, you
# can terminate that manually-launched instance and then the error should no
# longer appear.

variable "vpn10_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-b4affca3"
    "us-west-1" = "ami-42165d22"
    "us-west-2" = "ami-a6d773c6"
    "ap-southeast-2" = "ami-d33b06b0"
  }
}

# -------------------------
# Ubuntu
# -------------------------

variable "ub1604_amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-80861296"
    "us-west-1" = "ami-2afbde4a"
    "us-west-2" = "ami-efd0428f"
    "ap-southeast-2" = "ami-96666ff5"
  }
}
