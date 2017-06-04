output "vpn10" {
  value = "${lookup(var.vpn10_amis, var.region)}"
}

output "win2016base" {
  value = "${lookup(var.win2016base_amis, var.region)}"
}

output "win2016cont" {
  value = "${lookup(var.win2016cont_amis, var.region)}"
}

output "win2016nano" {
  value = "${lookup(var.win2016nano_amis, var.region)}"
}

output "win2012r2" {
  value = "${lookup(var.win2012r2_amis, var.region)}"
}

output "sql2016" {
  value = "${lookup(var.sql2016_amis, var.region)}"
}

output "sql2014" {
  value = "${lookup(var.sql2014_amis, var.region)}"
}

output "ub1604" {
  value = "${lookup(var.ub1604_amis, var.region)}"
}
