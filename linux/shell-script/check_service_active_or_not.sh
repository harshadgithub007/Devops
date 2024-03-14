# Program to check if a service is active or not

read -p "Enter the service name: " service

service_name="$service"

if systemctl is-active --quiet "$service_name"; then
    echo "The $service_name service is active."
    read -p "do you want to deactivate the service? (yes/no)" choice
    if [ $choice == yes ]
    then
	systemctl stop $service_name
	echo "********************"
	echo "$service_name has been deactivated"
    else
	echo "ok"
    fi
else
    echo "The $service_name service is not active."
    echo "Do you want to make this service active? (yes/no)"
    read -p "What to do: " reply
    if [ "$reply" == "yes" ]; then
        systemctl start "$service_name"
        echo "The service has been started."
        echo
        echo "Service Status:"
        systemctl status "$service_name"
    else
        echo "Thank you!"
    fi
fi

