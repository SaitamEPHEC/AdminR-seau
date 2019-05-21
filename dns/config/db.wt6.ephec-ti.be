; wt6.ephec-ti.be
$TTL 21600 ; 6 heures
$ORIGIN wt6.ephec-ti.be.
@ IN SOA ns.wt6.ephec-ti.be. admin.wt6.ephec-ti.be. (
                                        2019031908 ; serial
                                        3600 ; refresh 1heure
                                        3000 ; retry 50min
                                        4619200; expire 7semaines 4jours
                                        604800 ; minimum 1 semaine
                                        )
@ IN NS ns.wt6.ephec-ti.be.
@ IN MX 1 mail
@ IN TXT "v=spf1 include:mail.wt6.ephec-ti.be ip4.51.44.147.172 -all"

; web server
ns IN A 51.77.147.119
@ IN A 51.77.147.119
webServer IN A 51.77.147.119
www IN CNAME webServer
b2b IN CNAME webServer

; mail services
mail IN A 51.77.147.172
smtp IN CNAME mail
pop3 IN CNAME mail
imap IN CNAME mail
_imaps._tcp IN SRV 1 1 993 mail.wt6.ephec-ti.be.
_submission._tcp IN SRV 1 1 587 mail.wt6.ephec-ti.be.
