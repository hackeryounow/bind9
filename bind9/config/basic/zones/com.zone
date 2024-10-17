$TTL 86400
@   IN  SOA  ns1.tld.com. admin.com.example. (
            2023100102   ; Serial
            3600         ; Refresh
            1800         ; Retry
            1209600      ; Expire
            86400 )      ; Minimum TTL
     IN  NS  ns1.tld.com.

ns1.tld.com.        IN  A          ${HOST_IP}

tutu.com.           IN  NS         ns1.tutu.com.
ns1.tutu.com.       IN  A          ${AUTHORITATIVE_SERVER1a_IP}

gugu.com.            IN NS          ns1.gugu.com.
ns1.gugu.com.        IN A           ${AUTHORITATIVE_SERVER2a_IP}

