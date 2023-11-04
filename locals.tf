### EXAMPLE CONFIGURATION
### SINGLE-DC, THREE-RACK, 2-NODES PER RACK DC
### CASSANDRA VERSION CAN BE MODIFIED IN THE TPL FILE
### USES UBUNTU 18.04 BY DEFAULT

# locals {
#   cassandra_nodes = {
#     node_1 = {
#       name               = "test_cassandra_node_1A_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.41.1"
#       dc                 = "dc1"
#       rack               = "rack1a"
#       subnet_id          = "subnet-xxxxx" // 1A
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }
#     node_2 = {
#       name               = "test_cassandra_node_2C_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.21.1"
#       dc                 = "dc1"
#       rack               = "rack2c"
#       subnet_id          = "subnet-xxxxx" // 1C
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }
#     node_3 = {
#       name               = "test_cassandra_node_3D_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.5.1"
#       dc                 = "dc1"
#       rack               = "rack3d"
#       subnet_id          = "subnet-xxxxx" // 1D
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }
#     node_4 = {
#       name               = "test_cassandra_node_4A_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.41.2"
#       dc                 = "dc1"
#       rack               = "rack1a"
#       subnet_id          = "subnet-xxxxx" // 1A
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }
#     node_5 = {
#       name               = "test_cassandra_node_5C_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.21.2"
#       dc                 = "dc1"
#       rack               = "rack2c"
#       subnet_id          = "subnet-xxxxx" // 1C
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }
#     node_6 = {
#       name               = "test_cassandra_node_6D_DC1"
#       instance_type      = "m5.2xlarge"
#       private_ip         = "172.36.5.2"
#       dc                 = "dc1"
#       rack               = "rack3d"
#       subnet_id          = "subnet-xxxxx" // 1D
#       security_group_ids = ["sg-xxxxx"]
#       version            = "3.11.4"
#     }

#   seeds = "172.36.41.1"
# }