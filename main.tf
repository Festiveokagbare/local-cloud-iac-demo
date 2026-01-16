module "vpc" {
  source = "./modules/vpc"
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "nginx" {
  source = "./modules/nginx"
  vpc_id = module.vpc.vpc_id
}
