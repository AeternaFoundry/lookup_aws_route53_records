variable "route53_records_lookup" {
  description = <<EOT
Map of route53_records_lookup, attributes below
Required:
    - zone_id
Optional:
    - name_regex
EOT

  type = map(object({
    zone_id    = string
    name_regex = optional(string)
  }))
}

