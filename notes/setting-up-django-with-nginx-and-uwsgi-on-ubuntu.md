###Setting up Django with Nginx and uwsgi on Ubuntu 12.04

     
     
#### 1. The first thing that is necessary is install the correct packages:    



        
    sudo apt-get install nginx-full uwsgi uwsgi-plugin-python python-pip && sudo pip install django


####2. After the installation, you will have the following new config files and folder structures at:

    /etc/nginx/sites-available
    /etc/uwsgi/apps-available
    /etc/default/uwsgi


To add a new application, let’s say: voorloopnul, you have to create the file /etc/uwsgi/apps-available/voorloopnul.ini with the minimum content:

    [uwsgi]
    chdir = {ABSOLUTE_APP_DIR}
    module = {APP}.wsgi:application        
    vacuum = true
    max-requests=5000
    workers = 2
    threads = 2  
  

The line 2 should point to the root of your django project.  
A restart (service uwsgi restart) is required each time you add a new application at __/etc/uwsgi/apps-enabled__, this will create the directory structure at __/run/uwsgi/app//{socket,pid}__. It’s important to note, that every app file must and in .ini

The next logic step is make nginx talk with uwsgi servers, this will happens throught unix socket files located at __/run/uwsgi/app/{APPNAME}/socket__. 
So you have to edit the /etc/ngnix/sites-available/voorloonul.com file to make it looks like:

    server {
        server_name voorloopnul.com www.voorloopnul.com;
        access_log /var/log/nginx/voorloopnul.com.access.log;
        location / {
            uwsgi_pass unix:///var/run/uwsgi/app/{APPNAME}/socket;
            include uwsgi_params;
        }
    }


To remember to enable apps/sites you have to do a symbolic link from -avaible to the -enabled folder. e.g:

    ln -s /etc/nginx/sites-available/{SERVERNAME} /etc/nginx/sites-enabled/{SERVERNAME}    
    ln -s /etc/uwsgi/apps-available/{APPNAME}.ini /etc/uwsgi/apps-enabled/{APPNAME}.ini
    
___

[Resource: __voorloopnul.com__](http://voorloopnul.com/blog/setting-up-django-with-nginx-and-uwsgi-ubuntu-12-04/)
