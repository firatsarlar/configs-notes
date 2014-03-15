
Install packages ..

 ? xtables-addons-common
 ++ ipset

###. Install fail2ban

```
apt-get install fail2ban
```

###2. Main configuration.

To keep our bypass for established session in iptables, we'll make a new chain for fail2ban ..    
We'll jump to F2BxINPUT in our ruleset when it's apropriate

You may check : [Fw Config](https://github.com/firatsarlar/configs-notes/blob/master/firewall/iptables.032014.conf) ...


Backup original f2b jail config ..
```
cp /etc/fail2ban/jail.conf /etc/fail2ban/original.jail.conf
```

```
nano /etc/fail2ban/jail.conf
```

Find the line and replace INPUT with F2BxINPUT ..

```
# Specify chain where jumps would need to be added in iptables-* actions
chain = F2BxINPUT
```



