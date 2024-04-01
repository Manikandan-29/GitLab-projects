#root
module "vpc"{
    source = "./vpc"
}
module "ec2"{
    source ="./ec2"
    pb = module.vpc.my-pb
    sg = module.vpc.my-sg
}