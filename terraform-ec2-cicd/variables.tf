variable "ami_id" {
  default = "ami-020cba7c55df1f615" 
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Name of existing EC2 key pair"
}
