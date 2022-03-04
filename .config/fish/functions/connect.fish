function connect
systemctl start mariadb
echo "Mariadb service started\nLauching MyClI"
mycli -u IAteNoodles -p CrazyxNoob@69 $argv
echo "Exiting MyCLI\nMariadb service stopped"
systemctl stop mariadb
end
