# easycurl

`easycurl` is a comprehensive Bash script that simplifies the usage of `curl` commands by providing a menu-driven interface. This program allows users to perform various HTTP operations interactively, making it easier to test and debug HTTP requests.

## Features

   - GET Request: Perform a simple GET request.
   - POST Request: Perform a POST request with form data.
   - Include HTTP Headers: Include custom HTTP headers in the request.
   - Send JSON Data: Send JSON data with a POST request.
   - Upload a File: Upload a file to a server.
   - Download a File: Download a file from a server.
   - Basic Authentication: Use Basic Authentication for HTTP requests.
   - Bearer Token Authentication: Use Bearer Token Authentication.
   - Follow Redirects: Automatically follow HTTP redirects.
   - Set Custom User-Agent: Set a custom User-Agent string for the request.
   - Set a Timeout: Set a timeout for the request.
   - Use a Proxy: Send the request through a specified proxy server.
   - PUT Request: Perform a PUT request with data.
   - DELETE Request: Perform a DELETE request.
   - Send Cookies: Send specified cookies with the request.
   - Save Cookies: Save cookies to a specified file.
   - Limit Download Rate: Limit the rate of download.
   - Verbose Output: Display detailed information about the request and response.

## Installation

1. Download the easycurl script.
2. Make the script executable:
```sh
chmod +x easycurl
```

## Usage

Run the `easycurl` script to start the menu-driven interface:
```sh
./easycurl
```
You will be presented with a menu of options. Enter the number corresponding to the action you want to perform, and follow the prompts to enter the required data.

## Example

Performing a GET request:

    1. Select option 1) Perform a GET request.
    2. Enter the URL when prompted.

Performing a POST request:

    1. Select option 2) Perform a POST request.
    2. Enter the URL when prompted.
    3. Enter the POST data in the format key1=value1&key2=value2.

## Contributing

Feel free to submit issues and enhancement requests.

## License

This project is licensed under the MIT License.

This `easycurl` script simplifies HTTP requests, making it accessible for users to perform various `curl` operations without needing to remember complex command-line options. Enjoy using easycurl!
blackmagic 2024 ;)

