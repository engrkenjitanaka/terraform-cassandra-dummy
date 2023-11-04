# Creating a dummy Cassandra cluster with Terraform

A simple Terraform script to spin up a dummy Cassandra cluster for testing purposes :)

CAVEATS:
```
1. This is NOT FOR PRODUCTION USE.
2. Spins up a single DC in any configuration you want.
3. Can be modified to spin up multiple DCs (separate workspace, sepate directory, etc.).
4. This spins AWS EC2 instances - can easily be ported to other CSPs since the bootstrap script should on most Debian-based Linux distros.
```

How to use a different Cassandra version:
```
1. Update the cassandra.sh.tpl file (instruction inside)
2. Uses 3.11.4 by default
```