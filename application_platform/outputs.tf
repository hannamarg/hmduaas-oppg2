
output "random_string" {
  value = data.terraform_remote_state.remote_project.outputs.some_output_value
}