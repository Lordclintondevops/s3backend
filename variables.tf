variable "bucket" {
    type = string
    default = "clintontfstate"
  
}

variable "dynamodb_table" {
    type = string
    default = "state_lock"
  
}