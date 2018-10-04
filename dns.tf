resource "dnsimple_record" "cname-cloudfront" {
  domain = "perf.email"
  name   = "www"
  value  = "perfemail.netlify.com"
  type   = "CNAME"
  ttl    = "300"
}

resource "dnsimple_record" "alias-cloudfront" {
  domain = "perf.email"
  name   = ""
  value  = "perfemail.netlify.com"
  type   = "ALIAS"
  ttl    = "300"
}
