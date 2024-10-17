$TTL 86400
@   IN  SOA  ns1.tutu.com. admin.example.com. (
            2023100103   ; Serial
            3600         ; Refresh (1 hour)
            1800         ; Retry (30 minutes)
            1209600      ; Expire (2 weeks)
            86400 )      ; Minimum TTL (1 day)
     IN  NS  ns1.tutu.com.

ns1.tutu.com. IN  A  ${HOST_IP}

www.tutu.com.  IN  A  192.168.1.22

w.tutu.com.    IN   CNAME    b.tutu.com.
b.tutu.com.     IN   A        ${AUTHORITATIVE_SERVER2a_IP}

;fo1.tutu.com.        IN        A    192.148.5.1
;fo4.tutu.com.        IN        A    192.138.5.2
;fo8.tutu.com        IN        A    192.148.5.3
;fo12.tutu.com        IN        A    192.148.5.4
;fo16.tutu.com.        IN        A    192.148.5.5
;fo20.tutu.com.        IN        A    192.148.5.6
;fo24.tutu.com.        IN        A    192.148.5.7
;fo28.tutu.com.        IN        A    192.148.5.8
;fo32.tutu.com.        IN        A    192.148.5.9
;fo36.tutu.com.        IN        A    192.148.5.10
;fo40.tutu.com.        IN        A    192.148.5.10
;fo44.tutu.com.        IN        A    192.148.5.10
;fo48.tutu.com.        IN        A    192.148.5.10

