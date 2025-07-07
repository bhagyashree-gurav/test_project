data "aws_availability_zones" "available" {}
resource "aws_ebs_volume" "my_volume" {
  availability_zone = "us-east-1a"
  size              = 8
}

resource "aws_volume_attachment" "attach" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.my_volume.id
  instance_id = aws_instance.myapp-server.id
}
