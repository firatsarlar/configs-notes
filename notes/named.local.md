
/etc/bind/named.local.conf

```c

options {

    directory "/var/cache/bind";
    listen-on-v6 {none;};
    listen-on { 127.0.0.1;};

//  forwarders {8.8.8.8; 8.8.4.4;};
//  forward only;

//  disables all zone transfer requests
    allow-transfer{"none";};
  
    allow-query { 192.168.1.0/24; 127.0.0.1/24;};
 
    dnssec-enable no;

//  dnssec-validation auto;

//max-cache-size defines the maximum amount of memory to use for the server's cache
    max-cache-size 512M;
    
//cleaning-interval defines the time in MINUTES when all expired records will be deleted.
    cleaning-interval 15;

//max-cache-ttl sets the maximum time (in seconds) for which the server will cache positive answers, mine is 7 days.
    max-cache-ttl 604800;
    min-cache-ttl 86400;
    
//max-ncache-ttl sets the maximum time (in seconds) for which the server will cache negative answers. The default is 3 hours YUCK!, mines 5 minutes.
// max-ncache-ttl 300;

//Defines the number of simultaneous recursive lookups the server will perform on behalf of its clients. I can't see more then 500 happen at once and if it does, the adsl line will get pawned.
    recursive-clients 500;

    allow-recursion { localnets; };


    auth-nxdomain yes;    # conform to RFC1035
};
```

/etc/bind/named.log.conf

```c
logging {
    channel my_named_channel {
        file "/var/log/named/my_named.log";
	
	// syslog info;
	// Set the severity to dynamic to see all the debug mes$
	severity dynamic;
	print-time yes;
	print-severity yes;
	print-category yes;
    };
    
    category queries {
	my_named_channel;
    };
//  category client {
//	my_named_channel;
//  };

    category default { default_syslog; };
};




```

/etc/network/interfaces

```conf
 iface eth0 inet static
        address 192.168.3.3
        netmask 255.255.255.0
        gateway 192.168.3.1
        dns-nameservers 192.168.3.45 192.168.8.10 <<< 127.0.0.1 

```
