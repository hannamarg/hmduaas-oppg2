/*output "ami_id" {
  value = aws_instance.example.ami
} # bare et eksempel, skal fjernes
*/
#hentet fra global main.tf
output "random_string" {
  value = data.terraform_remote_state.global.outputs.random_string
}