#Using Security group module to create SG
module "my_SG" {
  source = "./modules/SG"
}

#Using ec2 module to create instance

module "my_ec2" {
  source = "./modules/ec2"

  #Referncing the output of security group module
  sg_group_id = module.my_SG.my_sg_id
}