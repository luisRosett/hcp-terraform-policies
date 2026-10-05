resource "aws_instance" "pass" {
  attrs = {
    instance_type = "t3.micro"
  }
}

resource "aws_instance" "fail_wrong_type" {
  expect_failure = true
  
  attrs = {
    instance_type = "t3.large"
  }
}

