module "beanstalk_app_project" {
    source = "./modules/beanstalk_application"
    aws_elastic_beanstalk_application_name=var.aws_elastic_beanstalk_application_name
    aws_elastic_beanstalk_application_description= var.aws_elastic_beanstalk_application_description
    aws_elastic_beanstalk_service_name = var.aws_elastic_beanstalk_service_name
}

module "beanstalk_environment_dev" {
      source = "./modules/beanstalk_environment"
      aws_elastic_beanstalk_application_name = module.beanstalk_app_project.beanstalk_application_name
      beanstalk_environment_name = "dev-env"   
      beanstalk_environment_solution_stack_name=var.beanstalk_environment_solution_stack_name
      beanstalk_environment_security_group = var.beanstalk_environment_security_group
}
module "beanstalk_environment_prod" {
      source = "./modules/beanstalk_environment"
      aws_elastic_beanstalk_application_name = module.beanstalk_app_project.beanstalk_application_name
      beanstalk_environment_name = "prod-env"     
      beanstalk_environment_solution_stack_name=var.beanstalk_environment_solution_stack_name
       beanstalk_environment_security_group = var.beanstalk_environment_security_group
}