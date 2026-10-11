variable "dataplex_glossaries" {
  description = <<EOT
Map of dataplex_glossaries, attributes below
Required:
    - glossary_id
    - location
Optional:
    - deletion_policy
    - description
    - display_name
    - labels
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    glossary_id     = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

