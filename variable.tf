#Terraform vars
variable "access_key" {
  description = "access key"
  type        = string
  sensitive   = true
}
variable "secret_key" {
  description = "secret key"
  type        = string
  sensitive   = true
}
variable "aws_region" {
  description = "AWS region"
  type        = string
}

#Dynamo DB vars
variable "table_name" {
  type    = string
  default = "<%=customOptions.tableName%>"
}
variable "hash_key" {
  type    = string
  default = "<%=customOptions.hashKey%>"
}
variable "hash_key_type" {
  type    = string
  default = "<%=customOptions.hashKeyValue%>"
}