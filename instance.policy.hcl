resource_policy "aws_instance" "example" {
  enforcement_level = "mandatory"
  
  enforce {
    condition     = attrs.instance_type == "t3.micro"
    error_message = "Only t3.micro instances are allowed"
  }
}

