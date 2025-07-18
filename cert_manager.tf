# Copyright (C) 2021 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

module "service_account" {
  source  = "terraform-google-modules/service-accounts/google"
  version = "4.5.4"

  project_id = var.project

  names = [
    local.service
  ]

  project_roles = [
    format("%s=>roles/dns.admin", var.project)
  ]
}

module "iam" {
  source  = "terraform-google-modules/iam/google//modules/service_accounts_iam"
  version = "8.1.0"

  project = var.project

  service_accounts = [
    module.service_account.email
  ]
  mode = "authoritative"

  bindings = {
    "roles/iam.workloadIdentityUser" = [
      format("serviceAccount:%s.svc.id.goog[%s/%s]", var.project, var.namespace, var.service_account)
    ]
  }

}
