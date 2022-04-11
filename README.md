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
  

## terraform state 

 - Terraform state helps map real world resources (vm instances, clusters,vpns, etc.. ) to terraform resources, 
 - By default it's stored in a local file **terraform.tfstate**. 
 - Before updating the infrastructure terraform refreshes this state file.
 - Resource dependency metada are also tracked int the file **terraform.tfstate**
 - caches resource attribute for subsequent use (improve performance)

### terraform state command 

terraform state [COMMAND]

-  **list**  list all resource tracked by the stazte file 
-  **rm**  remove a resource from the state file 
-  **show** show details of resource tracked in state file

### state storage 

By default, terraform stores state file locally on your system, this default behavior seems fine for individuals or testing pupose, 
but once you want to use terraform withing a team, in production grade apps, your state should be saved in a safer place, accessible by distributed teams. the good new is that terraform can be configured to be stored in remote locations sush as AWS S3 , or Google storage.

Terraform has a locking features that prevent terraform state from beeing updated simultanously, by two difference member.

Enables sharings ouptut values with other terraform configuration or code 

