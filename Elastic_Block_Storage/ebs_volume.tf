resource "aws_ebs_volume" "volume" {
  availability_zone = "us-east-2a"
  size = 2
  encrypted = false

tags = {
  Name ="ebs_new_volume"
}
}

resource "aws_volume_attachment" "mountvolumetoec2" {
  device_name = "/dev/sdd"
  instance_id = "${aws_instance.ebs_l.id}"
  volume_id   = "${aws_ebs_volume.volume.id}"
}