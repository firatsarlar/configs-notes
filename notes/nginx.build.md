  apt-get install build-essential zlib1g-dev libpcre3 libpcre3-dev

  wget http://nginx.org/download/nginx-1.4.0.tar.gz

  tar -xf nginx-1.4.0.tar.gz

  cd nginx-1.4.0


~~~
export CFLAGS="-Os -s";./configure \
--prefix=/usr/share/nginx \
--conf-path=/etc/nginx/nginx.conf \
--error-log-path=/var/log/nginx/error.log \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
--http-log-path=/var/log/nginx/access.log \
--http-proxy-temp-path=/var/lib/nginx/proxy \
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
--lock-path=/var/lock/nginx.lock \
--pid-path=/run/nginx.pid \
--with-pcre-jit \
--with-http_addition_module \
--with-http_gzip_static_module \
--with-http_realip_module \
--with-http_ssl_module \
--with-ipv6 \
--without-http_memcached_module \
--without-http_referer_module \
--without-http_scgi_module \
--without-http_split_clients_module \
--with-http_stub_status_module \
--without-http_ssi_module \
--without-http_userid_module \
--without-http_uwsgi_module \
--without-http_browser_module \
--without-http_geo_module \
--add-module=/home/firatto/_compile/nginx/nginx-1.5.12/src/3th-party/echo-nginx-module-0.51 \
~~~

later ...    
~~~
--add-module=/home/firatto/_compile/nginx/nginx-1.5.12/src/3th-party/nginx_accept_language_module-master \
--add-module=/home/firatto/_compile/nginx/nginx-1.5.12/src/3th-party/headers-more-nginx-module-0.25 \
--with-debug
--add-module=/home/firatto/_compile/nginx/nginx-1.5.12/src/3th-party/ngx_http_substitutions_filter_module-master \
--add-module=/home/firatto/_compile/nginx/nginx-1.5.12/src/3th-party/ngx_http_auth_pam_module-1.3 \
--with-http_image_filter_module \
--with-http_sub_module \
~~~


..gen 
~~~
sudo apt-get install build-essential zlib1g-dev
sudo apt-get install libpcre3
sudo apt-get install libpcre3-dev libssl-dev
~~~
..for -pam mod 
~~~ 
sudo apt-get install libpam0g-dev 
~~~
..for -image filter 
~~~ 
sudo apt-get install libgd2-dev 
~~~
