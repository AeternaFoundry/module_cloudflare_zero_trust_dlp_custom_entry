variable "zero_trust_dlp_custom_entries" {
  description = <<EOT
Map of zero_trust_dlp_custom_entries, attributes below
Required:
    - account_id
    - enabled
    - name
    - pattern
Optional:
    - description
    - profile_id
EOT

  type = map(object({
    account_id = string
    enabled    = bool
    name       = string
    pattern = object({
      regex      = string
      validation = optional(string)
    })
    description = optional(string)
    profile_id  = optional(string)
  }))
}

