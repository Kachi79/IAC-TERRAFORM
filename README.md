## Terraform module structure
When creating terraform modules, it is is important to stick to the recommended module structure which s as follows:
PROJECT_NAME>module_name(root-module(folder))>all-child_modules(folder)>files_4-each-child module. each child module should have a minimum of 2 files (main.tf & variable.tf).

after this structure has been neatly arranged, we must also have a main.tf file & variable.tf file that is not inside any if the child module, this 2 files will be inside the project folder. We will the call the child modules from inside this main.tf file and using the variable.tf file as the variable folder, also we must have a terraform.tfvars file inside the project folder too.

## TFVARS
The tfvars file is used essentially to pass values for different environments like dev, staging etc. If you do not pass values in the tfvars file, terraform will use the default values in the variable.tf file.

## config file
As best practice, keep the terraform.tfvars file inside the config folder and when using terraform plan command it's like this : terraform plan --var-file="config/terraform.tfvars"