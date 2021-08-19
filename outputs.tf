output "dev_url" {
  value = module.beanstalk_environment_dev.beanstalk_environment_endpoint
}
output "prod_url" {
  value = module.beanstalk_environment_prod.beanstalk_environment_endpoint
}