###1. Install fail2ban

```
apt-get install fail2ban
```

###2. Main configuration.

To keep our bypass for established session in iptables, we'll make a new chain for fail2ban ..    
We'll jump to F2BxINPUT in our ruleset when it's apropriate

[Fw Config](https://github.com/firatsarlar/configs-notes/blob/master/firewall/iptables.032014.conf)

/etc/fail2ban/jail.conf

```
# Specify chain where jumps would need to be added in iptables-* actions
chain = F2BxINPUT
```

