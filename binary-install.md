Download the  Terraform binary package 

```sh
wget -c https://releases.hashicorp.com/terraform/0.13.4/terraform_0.13.4_linux_amd64.zip
```

Unzip the downloaded file:

```sh
unzip terraform_0.13.4_linux_amd64.zip

```

Place the Terraform binary in the PATH of the VM operating system so the binary is accessible system-wide to all users:

```sh
sudo mv terraform /usr/sbin/
```

Note: If prompted, enter the username and password provided for the lab server.

Check the Terraform version information:
```sh
terraform version
```
