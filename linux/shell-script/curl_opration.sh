#!/bin/bash

: '
curl:
  -s: silent request, it will not show a progress bar
  -w: it will display information on the terminal
  "%{http_code}": to get the HTTP code
'

URL="https://gitthub.com/kritika-git/Docker-Projects"
response=$(curl -s -w "%{http_code}" $URL)

http_code=$(echo "$response" | tail -n1)  # Extract the last line containing the HTTP code

echo "$http_code"

if [ "$http_code" -eq 200 ]; then
    echo "Request Is Working Fine"
else
    echo "Send the slack message that the request is denied"
fi

