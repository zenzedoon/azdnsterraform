############ A record ###########
resource "azurerm_dns_a_record" "a_record" {
  count = var.record_type == "A" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl
  records = var.arecords
}

# resource "azurerm_dns_aaaa_record" "aaaa_record" {
#   count = var.record_type == "AAAA" ? 1 : 0
#   name                = var.recordname
#   zone_name           = var.dnszonename
#   resource_group_name = var.dns_rgname
#   ttl                 = var.ttl
#   records             = var.ipv6
# }

resource "azurerm_dns_cname_record" "cname_record" {
  count = var.record_type == "CNAME" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl
  record              = var.cnamerecord
}

resource "azurerm_dns_ns_record" "ns_record" {
  count = var.record_type == "NS" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl
  record = var.nsrecord
}

######## record MX #########
resource "azurerm_dns_mx_record" "mx_record" {
  count = var.record_type == "MX" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl

  record {
    preference = var.mxpreference
    exchange   = var.mxexchange
  }

}

########## record SRV ###########
resource "azurerm_dns_srv_record" "srv_record" {
  count = var.record_type == "SRV" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl

  record {
    priority = var.srvrecordpriority
    weight   = var.srvrecordweight
    port     = var.srvrecordport
    target   = var.srvrecordtarget
  }
}

######## record TXT ############

resource "azurerm_dns_txt_record" "example" {
  count = var.record_type == "TXT" ? 1 : 0

  name                = var.recordname
  zone_name           = var.dnszonename
  resource_group_name = var.dns_rgname
  ttl                 = var.ttl


  record {
    value = var.txtrecordvalue
  }
 
}

