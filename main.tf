resource "cloudflare_zero_trust_dlp_custom_entry" "zero_trust_dlp_custom_entries" {
  for_each = var.zero_trust_dlp_custom_entries

  account_id  = each.value.account_id
  enabled     = each.value.enabled
  name        = each.value.name
  pattern     = each.value.pattern
  description = each.value.description
  profile_id  = each.value.profile_id
}

