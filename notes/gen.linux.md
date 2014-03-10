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

`cat /var/log/sys*g | grep "iptables denied" | sed  -r "s/^(.*\:[0-9]+).*kernel.*SRC\=(([0-9]+\.){3}[0-9]+).*/\1 \2  ---xx /"`
