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

region = "europe-west1"

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
| terraform | >= 1.0.0 |

## Providers

No provider.

## Modules

| Name | Source | Version |
|------|--------|---------|
| iam | terraform-google-modules/iam/google//modules/service_accounts_iam | v7.3.0 |
| service_account | terraform-google-modules/service-accounts/google | 4.0.3 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| namespace | The Kubernetes namespace | `string` | n/a | yes |
| project | The project in which the resource belongs | `string` | n/a | yes |
| service\_account | The Kubernetes service account | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| service\_account | Service Account for Cert Manager |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
