resource "aws_instance" "web-instance-terraform" {
  for_each = var.instance_name
  ami           = data.aws_ami.Centos8.id
  instance_type = each.value

 tags = {
    Name = each.key
 }
}

resource "aws_route53_record" "www" {
  for_each = aws_instance.web-instance-terraform
  zone_id = var.zone_id
  name    = "${each.key}.learndevops.space"
  type    = "A"
  ttl     = 1
  records = [startswith(each.key, "web") ? each.value.public_ip : each.value.private_ip]
}

# output "instances_info" {
#     value = aws_instance.web-instance-terraform
# }