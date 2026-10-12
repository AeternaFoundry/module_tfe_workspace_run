output "workspace_runs_id" {
  description = "Map of id values across all workspace_runs, keyed the same as var.workspace_runs except keys with no id are omitted"
  value       = { for k, v in tfe_workspace_run.workspace_runs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "workspace_runs_apply" {
  description = "Map of apply values across all workspace_runs, keyed the same as var.workspace_runs except keys with no apply are omitted"
  value       = { for k, v in tfe_workspace_run.workspace_runs : k => one(v.apply) if v.apply != null && length(v.apply) > 0 }
}
output "workspace_runs_destroy" {
  description = "Map of destroy values across all workspace_runs, keyed the same as var.workspace_runs except keys with no destroy are omitted"
  value       = { for k, v in tfe_workspace_run.workspace_runs : k => one(v.destroy) if v.destroy != null && length(v.destroy) > 0 }
}
output "workspace_runs_workspace_id" {
  description = "Map of workspace_id values across all workspace_runs, keyed the same as var.workspace_runs except keys with no workspace_id are omitted"
  value       = { for k, v in tfe_workspace_run.workspace_runs : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

