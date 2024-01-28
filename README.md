# Automating-PHP-FPM-Status-Check-and-Notification-Script
This script checks the status of PHP-FPM on your CentOS 7 Linux server (It may work on most RHEL-based Linux servers). If PHP-FPM is found to be down (inactive), it will enable it using the systemctl start command. Additionally, it will send an email notification to the specified email address using the mail command.

**Note:** Make sure to replace your_email@example.com with the email address where you want to receive the notification.

First download the script file php_fpm_status_check.sh by running the following command:
**wget https://github.com/Ferguson230/Automating-PHP-FPM-Status-Check-and-Notification-Script/blob/main/php_fpm_status_check.sh**

# Make it executable by running the following command:
**chmod +x php_fpm_status_check.sh**

# You can then schedule this script to run periodically using a cron job. 
For example, to run it every 5 minutes, open the crontab file by running:
**crontab -e**

# Add the following line to the crontab file:
***/5 * * * * /path/to/php_fpm_status_check.sh**

Replace /path/to/php_fpm_status_check.sh with the actual path to the script file.

Save the crontab file and exit. The script will now run every 5 minutes and check the status of PHP-FPM on your CentOS 7 Linux server. If it is found down, it will enable it and send an email notification.
