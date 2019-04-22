; wt6.ephec-ti.be
$TTL 21600 ; 6 heures
$ORIGIN wt6.ephec-ti.be.
@ IN SOA ns.wt6.ephec-ti.be. admin.wt6.ephec-ti.be. (
                                        2019031907 ; serial
                                        3600 ; refresh 1heure
                                        3000 ; retry 50min
                                        4619200; expire 7semaines 4jours
                                        604800 ; minimum 1 semaine
                                        )
;
; NAMESERVERS 
;
@ IN NS ns.wt6.ephec-ti.be.
@ IN NS ns.ovh.net

;
; Nodes in domain
;
@ IN A 51.77.147.126
www IN A 51.77.147.126
