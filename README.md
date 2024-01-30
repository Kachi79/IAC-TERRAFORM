## Modules
when developng modules there are some ke steps to follow

1: create the parent module folder. Inside it create all the child modules folder(folder not file)
modules >> instance_module, vpc_module, sg_module, subnet_module
note that instance_module, vpc_module, subnet_module are the child module while "modules" is the parent module.

2: Inside each child module create 2 files (main.tf & variable.tf) keep the main configuration inside the main.tf and keep the variables inside the variables.tf folder. Keep the vpc configuration inside the vpc module, keep the subnet configuration inside the subnet module as so on ans the keep their variables in their respective variables.tf file.


3: After all the main.tf files and the variable.tf files have been populated, create 2 more files(main.tf &variables.tf) outside the module folder, create them in the project working directory. call the modules from this newly created main.tf file like this:

module "ec2" {
    source = "path of the ec2 module"
    give the values for the variables in the variable.tf file of the respective child module
}
