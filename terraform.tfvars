aws_profile            = "personal-aws"
region                 = "ap-south-1"
vpc_base_cidr          = "10.2.0.0/16"
enable_dns_hostnames   = true
enable_dns_support     = true
one_nat_gateway_per_az = false
vpc_name               = "devops-stage"
azs                    = ["ap-south-1a", "ap-south-1b"]
private_subnets        = ["10.2.32.0/19", "10.2.64.0/19"]
private_subnet_tags    = { subnet_type = "private" }
public_subnets         = ["10.2.96.0/19", "10.2.128.0/19"]
public_subnet_tags     = { 
  subnet_type = "public" 
  "kubernetes.io/cluster/devops-stage" = "shared"
  "kubernetes.io/role/elb"  = "1"
}
database_subnets       = ["10.2.160.0/19", "10.2.192.0/19"]
database_subnets_tags  = { subnet_type = "db" }
common_tags = {
  "owner"     = "mdprawez.musharraf@gmail.com"
  "env"       = "stage"
  "terraform" = "true"
  "project"   = "vpc"
  "purpose"   = "networking"
}
