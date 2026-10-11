data "aws_route53_records" "route53_records_lookup" {
  for_each = var.route53_records_lookup

  zone_id    = each.value.zone_id
  name_regex = each.value.name_regex
}

