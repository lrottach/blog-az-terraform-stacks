variable "deployment_location" {
  type        = string
  description = "Azure location name"
}

variable "project_identifier" {
  type        = string
  description = "Name suffix for resource names"
}

variable "identity_token" {
  type        = string
  ephemeral   = true
  description = "Identity token for provider authentication"
}

variable "client_id" {
  type        = string
  description = "Azure app registration client ID"
  default = "b5ebdb2b-dbe8-44ba-ad0e-4556a058bec9"
}

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
  default = "61de5036-4b92-424d-9c58-16720e561d6e"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
  default = "cb5d5a54-23f2-447e-8850-d43b278d1d15"
}
