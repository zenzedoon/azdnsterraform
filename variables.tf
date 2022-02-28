variable "record_type" {
  description = "The Type of the record DNS (A | CNAME | NS | MX | SRV | TXT ) "
  type        = string
 default	  = "A"		
}


variable "recordname" {
  description = "The record name"
  type        = string
  default 	  = ""
}

variable "dnszonename" {
  description = "The DNS Zone where the record will be added "
  type        = string
  default 	  = ""
}

variable "dns_rgname" {
  description = "The ressource group that contain the DNS zone "
  type        = string
  default 	  = "rg-dns"
}

variable "ttl" {
  description = "The TTL of the record DNS in seconds "
  type        = number
  default     = 300
}

variable "arecords" {
  description = "The puplic ip assigned to the record DNS "
  type        = list(string)
  default 	  = []

}

variable "cnamerecord" {
  description = "The value of the CNAME record "
  type        = string
  default 	  = ""
}

variable "nsrecord" {
  description = "The value of the NS record "
  type        = list(string)
  default 	  = []
}

variable "mxpreference" {
  description = "The value of the MX PReference "
  type        = string
  default 	  = ""
}

variable "mxexchange" {
  description = "The value of the MX exchange "
  type        = string
  default 	  = ""
}

variable "srvrecordpriority" {
  description = "The value of the SRV record priority"
  type        = number
  default 	  = 1
}

variable "srvrecordweight" {
  description = "The value of the SRV record weight"
  type        = number
  default 	  = 10
}

variable "srvrecordport" {
  description = "The value of the SRV record port"
  type        = number
  default 	  = 80
}

variable "srvrecordtarget" {
  description = "The FQDN of the SRV record target"
  type        = string
  default 	  = ""
}

variable "txtrecordvalue" {
  description = "The value of the TXT record"
  type        = string
  default 	  = ""
}




