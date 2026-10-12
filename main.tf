resource "tfe_workspace_run" "workspace_runs" {
  for_each = var.workspace_runs

  workspace_id = each.value.workspace_id

  dynamic "apply" {
    for_each = each.value.apply != null ? [each.value.apply] : []
    content {
      manual_confirm    = apply.value.manual_confirm
      message           = apply.value.message
      retry             = apply.value.retry
      retry_attempts    = apply.value.retry_attempts
      retry_backoff_max = apply.value.retry_backoff_max
      retry_backoff_min = apply.value.retry_backoff_min
      wait_for_run      = apply.value.wait_for_run
    }
  }

  dynamic "destroy" {
    for_each = each.value.destroy != null ? [each.value.destroy] : []
    content {
      manual_confirm    = destroy.value.manual_confirm
      message           = destroy.value.message
      retry             = destroy.value.retry
      retry_attempts    = destroy.value.retry_attempts
      retry_backoff_max = destroy.value.retry_backoff_max
      retry_backoff_min = destroy.value.retry_backoff_min
      wait_for_run      = destroy.value.wait_for_run
    }
  }
}

