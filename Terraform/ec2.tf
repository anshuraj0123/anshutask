resource "aws_instance" "web1" {
    count = 2
    ami           = var.ami_id
    instance_type = var.instance_type


    subnet_id = "${aws_subnet.prod-subnet-private-1.id}"
    vpc_security_group_ids = ["${aws_security_group.ssh-allowed.id}"]
    key_name = "${aws_key_pair.anshu-test.id}"

    tags = {
        Name: "Instance${count.index + 1}"
    }
}
// Sends your public key to the instance
resource "aws_key_pair" "anshu-test" {
    key_name = "anshu-test"
    public_key = "${file(var.PUBLIC_KEY_PATH)}"
}
