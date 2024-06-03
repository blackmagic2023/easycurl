#!/bin/bash

show_menu() {
    echo "Choose a curl command option:"
    echo "1) Perform a GET request"
    echo "2) Perform a POST request"
    echo "3) Include HTTP headers in the request"
    echo "4) Send JSON data with a POST request"
    echo "5) Upload a file"
    echo "6) Download a file"
    echo "7) Use Basic Authentication"
    echo "8) Use Bearer Token Authentication"
    echo "9) Follow Redirects"
    echo "10) Set a Custom User-Agent"
    echo "11) Set a Timeout"
    echo "12) Use a Proxy"
    echo "13) Perform a PUT request"
    echo "14) Perform a DELETE request"
    echo "15) Send Cookies"
    echo "16) Save Cookies to a File"
    echo "17) Limit the Rate of Download"
    echo "18) Verbose Output"
    echo "19) Exit"
    echo -n "Enter your choice: "
}

# Function to perform a GET request
get_request() {
    echo -n "Enter the URL: "
    read url
    curl -X GET "$url"
}

# Function to perform a POST request
post_request() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the POST data (e.g., key1=value1&key2=value2): "
    read data
    curl -X POST -d "$data" "$url"
}

# Function to include HTTP headers
include_headers() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the header (e.g., \"Content-Type: application/json\"): "
    read header
    curl -H "$header" "$url"
}

# Function to send JSON data with a POST request
send_json_post() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the JSON data (e.g., '{\"key1\":\"value1\", \"key2\":\"value2\"}'): "
    read json_data
    curl -H "Content-Type: application/json" -d "$json_data" "$url"
}

# Function to upload a file
upload_file() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the file path: "
    read file_path
    curl -F "file=@$file_path" "$url"
}

# Function to download a file
download_file() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the destination file path: "
    read dest_path
    curl -o "$dest_path" "$url"
}

# Function to use Basic Authentication
basic_auth() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the username: "
    read username
    echo -n "Enter the password: "
    read -s password
    curl -u "$username:$password" "$url"
}

# Function to use Bearer Token Authentication
bearer_auth() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the Bearer token: "
    read token
    curl -H "Authorization: Bearer $token" "$url"
}

# Function to follow redirects
follow_redirects() {
    echo -n "Enter the URL: "
    read url
    curl -L "$url"
}

# Function to set a custom User-Agent
set_user_agent() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the User-Agent: "
    read user_agent
    curl -A "$user_agent" "$url"
}

# Function to set a timeout
set_timeout() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the timeout in seconds: "
    read timeout
    curl --max-time "$timeout" "$url"
}

# Function to use a proxy
use_proxy() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the proxy (e.g., http://proxy.example.com:8080): "
    read proxy
    curl -x "$proxy" "$url"
}

# Function to perform a PUT request
put_request() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the PUT data (e.g., key1=value1&key2=value2): "
    read data
    curl -X PUT -d "$data" "$url"
}

# Function to perform a DELETE request
delete_request() {
    echo -n "Enter the URL: "
    read url
    curl -X DELETE "$url"
}

# Function to send cookies
send_cookies() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the cookies (e.g., name=value; name2=value2): "
    read cookies
    curl -b "$cookies" "$url"
}

# Function to save cookies to a file
save_cookies() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the file path to save cookies: "
    read file_path
    curl -c "$file_path" "$url"
}

# Function to limit the rate of download
limit_download_rate() {
    echo -n "Enter the URL: "
    read url
    echo -n "Enter the download rate limit (e.g., 100K): "
    read rate
    curl --limit-rate "$rate" "$url"
}

# Function for verbose output
verbose_output() {
    echo -n "Enter the URL: "
    read url
    curl -v "$url"
}

# Main program loop
while true; do
    show_menu
    read choice
    case $choice in
        1) get_request ;;
        2) post_request ;;
        3) include_headers ;;
        4) send_json_post ;;
        5) upload_file ;;
        6) download_file ;;
        7) basic_auth ;;
        8) bearer_auth ;;
        9) follow_redirects ;;
        10) set_user_agent ;;
        11) set_timeout ;;
        12) use_proxy ;;
        13) put_request ;;
        14) delete_request ;;
        15) send_cookies ;;
        16) save_cookies ;;
        17) limit_download_rate ;;
        18) verbose_output ;;
        19) exit 0 ;;
        *) echo "Invalid choice. Please try again." ;;
    esac
    echo -e "\n"
done
