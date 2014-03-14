


```conf
//
// Do any local configuration here
//

// Consider adding the 1918 zones here, if they are not used in your
// organization
// include "/etc/bind/zones.rfc1918";
options {

  directory "/var/cache/bind";
//  forwarders {8.8.8.8; 8.8.4.4;};
//  forward only;
  // disables all zone transfer requests
  allow-transfer{"none";};
  
  allow-query {
	192.168.1.0/24;
	127.0.0.1/24;};
dnssec-enable no;

//  dnssec-validation auto;

// max-cache-size defines the maximum amount of memory to use for the server's cache
max-cache-size 512M;
// cleaning-interval defines the time in MINUTES when all expired records will be deleted.
cleaning-interval 15;

// max-cache-ttl sets the maximum time (in seconds) for which the server will cache positive answers, mine is 7 days.
max-cache-ttl 604800;
min-cache-ttl 86400;
// max-ncache-ttl sets the maximum time (in seconds) for which the server will cache negative answers. The default is 3 hours YUCK!, mines 5 minutes.
// max-ncache-ttl 300;

// Defines the number of simultaneous recursive lookups the server will perform on behalf of its clients. I can't see more then 500 happen at once and if it does, the adsl line will get pawned.
recursive-clients 500;

// iinet's dns server 203.0.178.191
// amnet's dns server 203.153.224.10

  allow-recursion { localnets; };


  auth-nxdomain yes;    # conform to RFC1035
};
```
