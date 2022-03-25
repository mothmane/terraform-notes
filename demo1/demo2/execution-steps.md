

export TF_LOG=TRACE

Initialize the working directory where the code is located:
```sh
terraform init
```

Review the actions performed when you deploy the Terraform code:

```sh
terraform plan
```

Note: Two resources will be created, consistent with the providers that were configured in the provided code snippet.

Deploy the code:

```sh
terraform apply
```
When prompted, type yes and press Enter.

```sh
terraform destroy --auto-approve

```sh