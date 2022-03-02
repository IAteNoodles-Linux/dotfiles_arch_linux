function connect
systemctl start mariadb
mariadb $argv
echo "Stopping mariadb service"
systemctl stop mariadb
end
