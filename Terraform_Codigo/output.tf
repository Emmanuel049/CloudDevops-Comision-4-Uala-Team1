/*# Return availability zone list
output "availability_zones" {
  value = [
      "${data.aws_availability_zones.all_zones.names}"
  ]
}

# Return LB dns
output "elb_dns" {
    value = "${load-balancer-team1-1903542313.eu-west-2.elb.amazonaws.com}" #aws_ quitado
}*/