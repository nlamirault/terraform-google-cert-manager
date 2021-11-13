# Cert-Manager into Google Cloud Platform

![Tfsec](https://github.com/nlamirault/terraform-google-cert-manager/workflows/Tfsec/badge.svg)

## Usage

```hcl
module "cert_manager" {
  source  = "nlamirault/cert-manager/google"
  version = "1.0.0"

  project = var.project

  namespace       = var.namespace
  service_account = var.service_account
}
```

and variables :

```hcl
project = "foo-prod"

##############################################################################
# Cert-Manager

namespace       = "cert-manager"
service_account = "cert-manager"
```

## Documentation

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam"></a> [iam](#module\_iam) | terraform-google-modules/iam/google//modules/service_accounts_iam | 7.3.0 |
| <a name="module_service_account"></a> [service\_account](#module\_service\_account) | terraform-google-modules/service-accounts/google | 4.0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The Kubernetes namespace | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The project in which the resource belongs | `string` | n/a | yes |
| <a name="input_service_account"></a> [service\_account](#input\_service\_account) | The Kubernetes service account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_service_account"></a> [service\_account](#output\_service\_account) | Service Account for Cert Manager |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
