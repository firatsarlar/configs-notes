  apt-get install build-essential zlib1g-dev libpcre3 libpcre3-dev libssl-dev

  wget http://nginx.org/download/nginx-1.4.0.tar.gz

  tar -xf nginx-1.4.0.tar.gz

  cd nginx-1.4.0


~~~
./configure \
--with-cc-opt='-Os -fstack-protector --param=ssp-buffer-size=4 -Wformat -Werror=format-security -D_FORTIFY_SOURCE=2' \
--with-ld-opt='-Wl,-Bsymbolic-functions -Wl,-z,relro' \
--prefix=/usr/share/nginx \
--conf-path=/etc/nginx/nginx.conf \
--http-log-path=/var/log/nginx/access.log \
--error-log-path=/var/log/nginx/error.log \
--lock-path=/var/lock/nginx.lock \
--pid-path=/run/nginx.pid \
--http-client-body-temp-path=/var/lib/nginx/body \
--http-fastcgi-temp-path=/var/lib/nginx/fastcgi \
--http-proxy-temp-path=/var/lib/nginx/proxy \
--http-scgi-temp-path=/var/lib/nginx/scgi \
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
--with-pcre-jit \
--with-http_ssl_module \
--with-http_stub_status_module \
--with-http_realip_module \
--with-http_gzip_static_module \
--without-http_browser_module \
--without-http_geo_module \
--without-http_limit_req_module \
--without-http_limit_conn_module \
--without-http_memcached_module \
--without-http_referer_module \
--without-http_scgi_module \
--without-http_split_clients_module \
--without-http_ssi_module \
--without-http_userid_module \
--without-http_uwsgi_module \
--add-module=src/3th-party/echo-nginx-module-0.51 \
~~~

later ...    
~~~
--http-uwsgi-temp-path=/var/lib/nginx/uwsgi \
--with-ipv6 \
--without-http_limit_req_module \
--without-http_limit_zone_module \
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
