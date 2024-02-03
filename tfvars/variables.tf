variable "instance_name" {
  type = map
#   default = {
#     mongodb = "t3.micro"
#     web = "t2.micro"
#     rabbitmq = "t2.micro"
#   }
}

variable "zone_id" {
    type = string
    default = "Z02357183AC34D1F7B6MH"
}