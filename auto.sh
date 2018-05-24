#!/bin/bash

rm -f delegated-apnic-latest

wget https://ftp.apnic.net/stats/apnic/delegated-apnic-latest





./gfw-pac.py -i gfwlist.txt \
        -f gfw.pac \
        --user-rule=custom-domains.txt \
        --direct-rule=direct-domains.txt \
        -p "SOCKS5 127.0.0.1:1080; DIRECT" \
	--ip-file=delegated-apnic-latest
