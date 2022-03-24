# terraform-notes

## IAC (Infrastructure As Code)

## terraform workflow 
  write -> plan -> apply
  
 ## terraform initializing the working directory
 
 ```sh 
 terraform init 
 ```
 
 -  downloads ancillary components (modules and plugins) from public or private repos if not cached
 -  set up backend to store terraform state files 


## terraform key concepts

fiirst you write the code then you review the code using the plan command , you can iterate between those two step until your code is optimized and you happy with the result.

 -  **plan**  read the code and show you an execution/ deployment "plan" . this command does not deploy, it help review the code before execution.
 this command needs credentials to connect to infrastructure
 -  **apply** deploys the instructions and statements in the code to the choosen platform, updates the deployment **state** tracking mechanism (state file) this state file can be stored locally or remotly in the provider , subsequent command will check this file before applying changes to your infrastructure 
 - **destroy** look at the state file and destroy all the resources tracked by this state file, this command is non reversable, it help destroy resources created by terraform 

## ressource adressing

```terraform 
provider "aws" {
 regison = "us-west-1"
}

resource "aws_instance" "web" {
  ami = "ami-aef5g7y6"
  instance_type = "t2.micro"
}

data "aws_instance" "my-existing-vm" {
 instance_id = "id-5678IUY76"
}
 ```
 **resource adress** -> aws_instance.web
  **resource adress** -> data.aws_instance.my-existing-vm
