variable "region" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "us-east-1" 
}

variable "vpc_cidr" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "10.0.0.0/16" 
}

variable "subnet_cidr" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "10.0.1.0/24" 
}

variable "az" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "us-east-1a" 
}

variable "ami_id" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "ami-084568db4383264d4" 
}

variable "instance_type" {
    description ="aws region to deploy the innfrastructure"
    type        = string
    default     = "t2.micro"
}