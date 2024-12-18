resource "aws_dynamodb_table" "ddtable" {
  name           = var.table_name
  hash_key       = var.hash_key
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }
  tags = {
    Name        = var.table_name
    Environment = "Morpheus"
  }
}