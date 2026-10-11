output "route53_records_lookup_name_regex" {
  description = "Map of name_regex values across all route53_records_lookup, keyed the same as var.route53_records_lookup"
  value       = { for k, v in data.aws_route53_records.route53_records_lookup : k => v.name_regex if v.name_regex != null && length(v.name_regex) > 0 }
}
output "route53_records_lookup_resource_record_sets" {
  description = "Map of resource_record_sets values across all route53_records_lookup, keyed the same as var.route53_records_lookup"
  value       = { for k, v in data.aws_route53_records.route53_records_lookup : k => v.resource_record_sets if v.resource_record_sets != null && length(v.resource_record_sets) > 0 }
}
output "route53_records_lookup_zone_id" {
  description = "Map of zone_id values across all route53_records_lookup, keyed the same as var.route53_records_lookup"
  value       = { for k, v in data.aws_route53_records.route53_records_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

