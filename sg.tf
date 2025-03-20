module "mysql_sg" {
   source = "../terraform-aws-Security-group" 
   project_name = var.project_name
   environment = var.environment
   sg_name = "mysql"
   sg_description = "created for mysql instance in expense dev"
   vpc_id = data.aws_ssm_parameter.vpc_id.value
   common_tags = var.common_tags
  
}

# data "aws_ssm_parameter" "Vpc_id" 