The >& redirects a stream to another file descriptor (in BASH shell)

  0 is stdin  
  1 is stdout  
  2 is stderr 
  
  
  2>&1 redirects 2 to 1
  
___

Disable upstart service ( ubuntu )

update-rc.d {service} disable  
or  
following command to remove all the symlinks in /etc/rc?.d/:  
update-rc.d -f {service} remove 

------
`
rsync -az --stats --human-readable -e "ssh {configured.ssh host}" --rsync-path="sudo /usr/bin/rsync"  :{src} {target}
`

log parse test :

`
cat /var/log/sys*g | grep "iptables denied" | sed  -r "s/^(.*\:[0-9]+).*kernel.*SRC\=(([0-9]+\.){3}[0-9]+).*/\1 \2  ---xx /"
`

ubuntu zsnc :

`zsync http://tr.cdimage.ubuntu.com/ubuntu-server/daily/current/trusty-server-amd64.iso.zsync -o {target-dir}/trusty-server-amd64.iso`

temporarly allow ping

```
iptables -I INPUT -p icmp -j ACCEPT
```

```
Host *
 #ServerAliveInterval 240
 ServerAliveCountMax 3
 ServerAliveInterval 110
 ControlMaster auto
 ControlPath /tmp/%r@%h:%p
Host goo
    Hostname goxex.net
    User firattoc
    IdentityFile ~/.ssh/id_rsa
    Port 22
```


to see full hostname terminal prompt
 
`export PS1="\[\u@$(hostname -f): \w\]# "

postfix log spam filtered 

`cat /var/log/mail.log | grep "zen" | sed -r 's/^(.*\:[0-9]+).*\[(.*)\].* from\=<(.*)> to\=<(.*\..*)> proto.*$/\1 \2 \3 \4/`


dovecot pw

´doveadm pw -s SHA512-CRYPT´

´sudo adduser LOGIN_ID www-data
sudo chmod g+rwX -R /var/www

