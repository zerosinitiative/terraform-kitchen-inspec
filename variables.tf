variable "ami_id" {
    default = "ami-09d8b5222f2b93bf0"
}

variable "instance_type" {
    default = "t2.micro"
}

variable "tags" {
    type = map
    default = {
        "Name" = "TF Instance"
    }
}