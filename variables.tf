variable "workspace_runs" {
  description = <<EOT
Map of workspace_runs, attributes below
Required:
    - workspace_id
Optional:
    - apply (block):
        - manual_confirm (required)
        - message (optional)
        - retry (optional)
        - retry_attempts (optional)
        - retry_backoff_max (optional)
        - retry_backoff_min (optional)
        - wait_for_run (optional)
    - destroy (block):
        - manual_confirm (required)
        - message (optional)
        - retry (optional)
        - retry_attempts (optional)
        - retry_backoff_max (optional)
        - retry_backoff_min (optional)
        - wait_for_run (optional)
EOT

  type = map(object({
    workspace_id = string
    apply = optional(object({
      manual_confirm    = bool
      message           = optional(string)
      retry             = optional(bool)
      retry_attempts    = optional(number)
      retry_backoff_max = optional(number)
      retry_backoff_min = optional(number)
      wait_for_run      = optional(bool)
    }))
    destroy = optional(object({
      manual_confirm    = bool
      message           = optional(string)
      retry             = optional(bool)
      retry_attempts    = optional(number)
      retry_backoff_max = optional(number)
      retry_backoff_min = optional(number)
      wait_for_run      = optional(bool)
    }))
  }))
}

