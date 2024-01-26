## Terraform module structure
When creating terraform modules, it is is important to stick to the recommended module structure which s as follows:
PROJECT_NAME>module_name(root-module(folder))>all-child_modules(folder)>files_4-each-child module. each child module should have a minimum of 2 files (main.tf & variable.tf).

after this structure has been neatly arranged, we must also have a main.tf file & variable.tf file that is not inside any if the child module, this 2 files will be inside the project folder. We will the call the child modules from inside this main.tf file and using the variable.tf file as the variable folder, also we must have a terraform.tfvars file inside the project folder too.