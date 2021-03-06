# _Terraform Module: terraform-module-aws-eip_
_Terraform module for_ **_AWS Elastic IP_**


<!--BEGIN STABILITY BANNER-->
---

![_Code : Stable_](https://img.shields.io/badge/Code-Stable-brightgreen?style=for-the-badge&logo=github)
> **_This is a stable example. It should successfully build out of the box_**
>

---
<!--END STABILITY BANNER-->


## _General_

_This module can be used to deploy a_ **_Elastic IP_** _on AWS Cloud Provider......_


---

## _Prerequisites_

_This module needs **_Terraform 0.12.23_** or newer._
_You can download the latest Terraform version from_ [_here_](https://www.terraform.io/downloads.html).



---

## _Features Branches_

_Below we are able to check the resources that are being created as part of this module call:_

- **_Elastic IP_**


---

## _Usage_

## _Using this repo_

_To use this module, add the following call to your code:_

- **_Sample Code:_**

```tf
module "eip" {
  source = "git::https://github.com/nitinda/terraform-module-aws-eip.git?ref=master"

  vpc                       = true
  network_interface         = "${aws_network_interface.multi-ip.id}"
  associate_with_private_ip = "10.0.0.10"
  tags                      = {
    Environment = "prod"
    Project     = "POC"
  }
}

```

```tf
module "eip" {
  source = "git::https://github.com/nitinda/terraform-module-aws-eip.git?ref=master"

  vpc  = true
  tags = {
    Environment = "prod"
    Project     = "POC"
  }
}

```

```tf
module "eip" {
  source = "git::https://github.com/nitinda/terraform-module-aws-eip.git?ref=master"

  instance = aws_instance.web.id
  vpc      = true
  tags     = {
    Environment = "prod"
    Project     = "POC"
  }
}

```

---

## _Inputs_

_The variables required in order for the module to be successfully called from the deployment repository are the following:_

|**_Variable_** | **_Description_** | **_Type_** | **_Argument Status_** | **_Default Value_** |
|:----|:----|-----:|:---:|:---:|
| **_vpc_** | _Boolean if the EIP is in a VPC or not_ | _bool_ | **_Optional_** | **_true_** |
| **_instance_** | _EC2 instance ID_ | _string_ | **_Optional_** | **_null_** |
| **_network\_interface_** | _Network interface ID to associate with_ | _string_ | **_Optional_** | **_null_** |
| **_associate\_with\_private\_ip_** | _A user specified primary or secondary private <br/> IP address to associate with the Elastic IP address_ | _string_ | **_Optional_** | **_null_** |
| **_public\_ipv4\_pool_** | _EC2 IPv4 address pool identifier or amazon_ | _string_ | **_Optional_** | **_amazon_** |
| **_tags_** | _A mapping of tags to assign to the resource_ | _map(string)_ | **_Optional_** | **_{}_** |


---


## _Outputs_

### _General_

_This module has the following outputs:_

* **_id_**
* **_public\_ip_**
* **_public\_dns_**

---

### _Usage_

_In order for the variables to be accessed at module level please use the syntax below:_

```tf
module.<module_name>.<output_variable_name>
```


_The output variable is able to be accessed through terraform state file using the syntax below:_

```tf
data.terraform_remote_state.<layer_name>.<output_variable_name>
```

---



## _Authors_

_Module maintained by Module maintained by the -_ **_Nitin Das_**
