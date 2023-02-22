#!/bin/bash

# Set the IP address and port of the logging server
server_ip="your_laptop_ip"
server_port="1234"

# Open a TCP listener on the specified port
nc -lk "$server_port" | while read log_message; do
  # Print the log message to the console
  echo "$log_message"
done
