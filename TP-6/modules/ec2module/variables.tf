variable "instance_type" {
  type        = string
  description = "set aws instance type"
  default     = "t2.nano"
}

variable "aws_common_tag" {
  type        = map(any)
  description = "set aws tag"
  default = {
    Name = "ec2-training"
  }
}

variable "sg_name" {
  type        = string
  description = "set sg name"
  default     = "training-tp6-sg"
}