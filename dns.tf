resource "dnsimple_record" "cname-cloudfront" {
    domain = "perf.email"
    name = "www"
    value = "debqn5w4zz8r9.cloudfront.net"
    type = "CNAME"
    ttl = "300"
}

resource "dnsimple_record" "alias-cloudfront" {
    domain = "perf.email"
    name = ""
    value = "debqn5w4zz8r9.cloudfront.net"
    type = "ALIAS"
    ttl = "300"
}
