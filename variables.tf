#------------------------------------------------------------------------------
# REQUIRED
#------------------------------------------------------------------------------

variable "resource_group_name" {
  description = "Resource group that will contain the gateway"
}

variable "location" {
  description = "Azure Region where the gateway will be created"
}

variable "subnet_id" {
  description = "Subnet where the gateway will create its NIC"
}

#------------------------------------------------------------------------------
# OPTIONAL
#------------------------------------------------------------------------------

variable "name" {
  description = "Root name applied to all resources. A dynamic name will be generated if none is provided"
  default     = ""
}

variable "targets" {
  description = "List of NIC IDs targeted by the application gateway's backend pool"
  default     = []
}

variable "enable_public_endpoint" {
  description = "Create a public IP and attach it to the application gateway, otherwise an internal gateway will be created"
  default     = true
}

variable "enable_http2" {
  description = "Enable the HTTP/2 protocol"
  default     = true
}

variable "ssl_cn" {
  description = "Common name (CN) added to the self-signed certificate subject"
  default     = "*.dominodatalab.com"
}

variable "ssl_sans" {
  description = "List of alternative DNS names identified by the self-signed certificate"
  default     = []
}

variable "disabled_ssl_protocols" {
  description = "List of ssl protocols which should be disabled on this application gateway"
  default     = ["TLSv1_0", "TLSv1_1"]
}

# sku settings
variable "sku_name" {
  description = ""
  default     = "Standard_Medium" # "Standard_v2"
}

variable "sku_tier" {
  description = ""
  default     = "Standard" # "Standard_v2"
}

variable "sku_capacity" {
  description = ""
  default     = 2
}

variable "cookie_based_affinity" {
  description = "Specify Enabled or Disabled. Controls cookie-based session affinity to backend pool members"
  default     = "Disabled"
}

variable "backend_request_timeout" {
  description = "Number of seconds to wait for a backend pool member to respond"
  default     = 60
}

variable "enable_connection_draining" {
  description = "Enable connection draining to change members within a backend pool without disruption"
  default     = false
}

variable "connection_drain_timeout" {
  description = "Number of seconds to wait before for active connections to drain out of a removed backend pool member"
  default     = 300
}

variable "tags" {
  description = "A mapping of tags to assign to all resources"
  default     = {}
}
