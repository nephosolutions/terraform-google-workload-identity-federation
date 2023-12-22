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

output "audience" {
  description = "The URL of the workload identity audience."
  value       = format("//iam.googleapis.com/%s", google_iam_workload_identity_pool_provider.oidc_provider.name)
}

output "pool_id" {
  description = "The identifier of the workload identity pool."
  value       = google_iam_workload_identity_pool.oidc_provider.id
}

output "pool_name" {
  description = "The name of the workload identity pool."
  value       = google_iam_workload_identity_pool.oidc_provider.name
}

output "pool_state" {
  description = "The state of the workload identity pool."
  value       = google_iam_workload_identity_pool.oidc_provider.id
}

output "provider_id" {
  description = "The identifier of the workload identity provider."
  value       = google_iam_workload_identity_pool_provider.oidc_provider.id
}

output "provider_name" {
  description = "The name of the workload identity provider."
  value       = google_iam_workload_identity_pool_provider.oidc_provider.name
}

output "provider_state" {
  description = "The state of the workload identity provider."
  value       = google_iam_workload_identity_pool_provider.oidc_provider.id
}
