
# dev 

module "dev-app" {
    source = "./multi-env-infra"
    my_env = "dev"
    instance_type = "t2.micro"
    ami = "ami-0dee22c13ea7a9a67"
    ec2-count = 1
    
}

#prd
module "prd-app" {
    source = "./multi-env-infra"
    my_env = "prd"
    instance_type = "t2.medium"
    ami = "ami-0dee22c13ea7a9a67" 
    ec2-count = 2
    
}

#stg
module "stg-app" {
    source = "./multi-env-infra"
    my_env = "stg"
    instance_type = "t2.small"
    ami = "ami-0dee22c13ea7a9a67" 
    ec2-count = 3
}