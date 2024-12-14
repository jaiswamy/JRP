variable "instance_type" {
    type = string
    default = "  "
    validation {
      condition = instance_type == "t3.micro"
      error_message = ""
    }
}
