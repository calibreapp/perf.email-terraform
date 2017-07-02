# Mailgun
resource "dnsimple_record" "mail_spf" {
    domain = "perf.email"
    name = "@"
    value = "v=spf1 include:mailgun.org include:servers.mcsv.net ~all"
    type = "TXT"
    ttl = "600"
}

resource "dnsimple_record" "mail_cname" {
    domain = "perf.email"
    name = "email"
    value = "mailgun.org"
    type = "CNAME"
    ttl = "600"
}

resource "dnsimple_record" "mail_rsa" {
    domain = "perf.email"
    name = "smtp._domainkey"
    value = "k=rsa; p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCYoVmNPftDGP2bIdfgF6aqcPCiZhF8Adx5NKykikt4WuVcw3ajxgyuvgZTE3vq7WzkTNsXK+pE4w64VNTBaPn2FRXDASIlqmGj0tBlKDg9ZhVadT+JtNnMI2PBu69NfQ+IDi2wK1+di8uNci8gF7d7LAiO1CbKrWutdlnBIB3wTwIDAQAB"
    type = "TXT"
    ttl = "600"
}

resource "dnsimple_record" "mail_mx_a" {
    domain = "perf.email"
    name = "@"
    value = "mxa.mailgun.org"
    type = "MX"
    ttl = "600"
}

resource "dnsimple_record" "mail_mx_b" {
    domain = "perf.email"
    name = "@"
    value = "mxb.mailgun.org"
    type = "MX"
    ttl = "600"
}

resource "dnsimple_record" "mailchimp_cname" {
    domain = "perf.email"
    name = "k1._domainkey.perf.email"
    value = "dkim.mcsv.net"
    type = "CNAME"
    ttl = "3600"
}
