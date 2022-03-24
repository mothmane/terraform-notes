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
