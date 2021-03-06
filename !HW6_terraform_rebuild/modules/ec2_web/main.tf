
resource "aws_instance" "webserver" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    vpc_security_group_ids = var.sec_groups
    user_data = var.user_data
    key_name= var.key_name
    iam_instance_profile = var.iam_profile

    tags = {
        Name = "${var.webserver_name}"
    }
}