variable "tf_state_bucket" {
  description = "Name of S3 bucket in AWS for storing TF State"
  default     = "devops-recipe-app-tf-states"

}

variable "tf_state_lock_table" {
  description = "Name of DynamoDB table in AWS for storing TF State Lock"
  default     = "devops-recipe-api-tf-locks"

}

variable "project" {
  description = "Project name for tagging resources"
  default     = "recipe-app-api"

}

variable "contact" {
  description = "Contact name for tagging resources"
  default     = "nanakwameboa9@gmail.com"

}