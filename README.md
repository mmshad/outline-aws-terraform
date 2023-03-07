# outline-aws-terraform

Terraform script to deploy Outline VPN on AWS. 

### Prerequisites
- The Terraform CLI (1.2.0+) installed.
- The AWS CLI installed.
- AWS account and associated credentials that allow you to create resources.

### Step by Step
Follow these steps to configure your VPN,

- Install Terraform CLI (instructions [page](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)).
- Install AWS CLI (instructions [page](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)).
- Configure AWS credentials as described in this [page](https://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html). You can add your AWS credentials in `~/.aws/credentials` file,

```bash 
AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
```

or add them as Environmental Variables (less secure) or use [Vault by HashiCorp](https://www.vaultproject.io/).
Then format, validate, plan, and apply your Terraform,

```bash
terraform fmt
terrafrom validate
terraform plan  # dry run before applying
terraform apply
```

At the end of Terraform script results, look for a line with green color and `{"apiUrl":"https:/`. Copy this green line (including brackets ) to Outline Manager for AWS.

**Note**: The AMI in the `variables.tf` file is a default one. You can build an AMI with Docker installed to save on the Docker installation process by Outline.


If you need to destroy and create a new VPN, just destroy each with 

```bash
terraform plan  -destroy # dry run before applying
terraform destroy
```

Enjoy!