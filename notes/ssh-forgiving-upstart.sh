# ssh - OpenBSD Secure Shell server
#
# The OpenSSH server provides secure shell access to the system.

description  "OpenSSH server"

start on filesystem or runlevel [2345]
stop on runlevel [!2345]

respawn
respawn limit 10 5
umask 022

# 'sshd -D' leaks stderr and confuses things in conjunction with 'console log'
console none

pre-start script
    test -x /usr/sbin/sshd || { stop; exit 0; }
    test -e /etc/ssh/sshd_not_to_be_run && { stop; exit 0; }
    test -c /dev/null || { stop; exit 0; }
    mkdir -p -m0755 /var/run/sshd
end script

#test -z "$(exec /usr/sbin/sshd -D 2>&1)" || { exec /usr/sbin/sshd -D -f /etc/ssh/sshd_config.bk; }

# if you used to set SSHD_OPTS in /etc/default/ssh, you can change the
# 'exec' line here instead
script

    if [ "$(/usr/sbin/sshd -t 2>&1)" != "" ]; then
            exec /usr/sbin/sshd -D -f /etc/ssh/sshd_config.bk
            echo "FAILSAFE "
    #       FAILSAFE="-f /etc/ssh/sshd_config.bk"
            #exit 0
    else
            exec /usr/sbin/sshd -D
    fi

end script
