#!/bin/bash

# Check PHP-FPM status
php_fpm_status=$(systemctl is-active php-fpm)

# If PHP-FPM is down, enable it and send email notification
if [[ $php_fpm_status == "inactive" ]]; then
    systemctl start php-fpm
    echo "PHP-FPM was found down and has been enabled." | mail -s "PHP-FPM Status Notification" your_email@example.com
fi
