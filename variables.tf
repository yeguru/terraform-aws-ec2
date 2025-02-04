variable "ami_id" {
  
  default     = "ami-09c813fb71547fc4f"
  
}
variable "sg_id" {

}
variable "instance_type" {
    default = "t3.micro"
    validation {
                condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
                error_message = "Valid values for var: test_variable are (t3.micro, t3.small, t3.medium)."
    } 
}
variable "tags" {
    default = {}
}