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

variable "allowed_audiences" {
  description = "Acceptable values for the aud field (audience) in the OIDC token."
  type        = list(string)
  default     = null

  validation {
    condition     = var.allowed_audiences == null ? true : length(var.allowed_audiences) <= 10
    error_message = "A maximum of 10 audiences may be configured."
  }

  validation {
    condition = var.allowed_audiences == null ? true : anytrue([
      for audience in var.allowed_audiences : (length(audience) <= 256)
    ])

    error_message = "Each audience may be at most 256 characters."
  }
}

variable "attribute_condition" {
  description = "A Common Expression Language expression, in plain text, to restrict what otherwise valid authentication credentials issued by the provider should not be accepted."
  type        = string
  default     = null
}

variable "attribute_mapping" {
  description = "Maps attributes from authentication credentials issued by an external identity provider to Google Cloud attributes, such as subject and segment."
  type        = map(string)
  default     = null
}

variable "description" {
  description = "A description for the pool and provider."
  type        = string
  default     = null

  validation {
    condition     = var.description == null ? true : length(var.description) <= 256
    error_message = "This value cannot exceed 32 characters."
  }
}

variable "disabled" {
  description = "Whether the pool is disabled."
  type        = bool
  default     = null
}

variable "display_name" {
  description = "A display name for the pool and provider."
  type        = string
  default     = null

  validation {
    condition     = var.display_name == null ? true : length(var.display_name) <= 32
    error_message = "This value cannot exceed 32 characters."
  }
}

variable "issuer_uri" {
  description = "The OIDC issuer URL."
  type        = string
}

variable "project_id" {
  description = "The ID of the project in which the resources belong."
  type        = string
  default     = null
}

variable "pool_id" {
  description = "The ID used for the pool, which is the final component of the pool resource name."
  type        = string
  nullable    = false
}

variable "provider_id" {
  description = "The ID for the provider, which becomes the final component of the resource name."
  type        = string
  nullable    = false

  validation {
    condition = anytrue([
      length(var.provider_id) >= 4,
      length(var.provider_id) <= 32
    ])

    error_message = "This value should be 4-32 characters."
  }

  validation {
    condition     = length(regexall("^[a-z0-9][a-z0-9-]+[a-z0-9]$", var.provider_id)) == 1
    error_message = "This value may only contain the characters `[a-z0-9-]`."
  }
}
