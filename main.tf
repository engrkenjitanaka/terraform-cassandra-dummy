data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "cassandra_nodes" {
  for_each                    = local.cassandra_nodes
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = each.value.instance_type
  private_ip                  = each.value.private_ip
  vpc_security_group_ids      = each.value.security_group_ids
  subnet_id                   = each.value.subnet_id

  root_block_device {
    volume_size           = 3000
    volume_type           = "gp3"
    throughput            = 1000
    iops                  = 16000
    delete_on_termination = true
    tags = {
      Name = "${each.value.name}_root"
    }
  }

  user_data = templatefile("./tpl/cassandra.sh.tmpl", {
    seeds       = local.seeds
    name        = each.value.name
    instance_ip = each.value.private_ip
    dc          = each.value.dc
    rack        = each.value.rack
  })

  tags = {
    Name    = each.value.name
    ### CASSANDRA VERSION CAN BE MODIFIED IN THE TPL FILE ###
    Version = each.value.version
  }
}