/**
 * Copyright 2023 NephoSolutions srl
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

resource "google_iam_workload_identity_pool" "oidc_provider" {
  disabled                  = var.disabled
  display_name              = var.display_name
  description               = var.description
  project                   = var.project_id
  workload_identity_pool_id = var.pool_id
}

resource "google_iam_workload_identity_pool_provider" "oidc_provider" {
  attribute_condition                = var.attribute_condition
  attribute_mapping                  = var.attribute_mapping
  disabled                           = google_iam_workload_identity_pool.oidc_provider.disabled
  display_name                       = google_iam_workload_identity_pool.oidc_provider.display_name
  description                        = google_iam_workload_identity_pool.oidc_provider.description
  project                            = google_iam_workload_identity_pool.oidc_provider.project
  workload_identity_pool_id          = google_iam_workload_identity_pool.oidc_provider.workload_identity_pool_id
  workload_identity_pool_provider_id = var.provider_id

  oidc {
    allowed_audiences = var.allowed_audiences
    issuer_uri        = var.issuer_uri
  }
}
