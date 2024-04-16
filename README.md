# Cify - A WiFi Hacking Tool

Cify is a Ruby-based WiFi hacking tool designed for penetration testers, security researchers, and network administrators to assess the security of WiFi networks. The tool aims to simplify the process of scanning networks, deauthenticating clients, and cracking WiFi passwords using the popular Aircrack-ng suite.

Cify provides a user-friendly terminal interface, allowing users to easily access various features with just a few clicks. The tool's modular design enables users to extend its functionality and incorporate additional WiFi hacking techniques with ease.

## Key Features

- Scan for nearby WiFi networks
- Deauthenticate clients to capture handshakes
- Crack WiFi passwords using password lists

## System Requirements

- Ruby
- Aircrack-ng suite (aircrack-ng, airodump-ng, aireplay-ng)
- libpcap-dev

## Installation

1. Clone the repository or download the source code.
2. Navigate to the repository's directory.
3. Run `ruby install.rb` to install the tool and its dependencies.

## Usage

Run the tool with the following command:

```bash
cify
```

You'll be presented with a menu where you can choose between the following options:

1. Scan networks
2. Deauthenticate client
3. Crack password
4. Exit

### Scan networks

This option scans for nearby WiFi networks and saves the captured data to a .cap file for later analysis.

### Deauthenticate client

This option allows you to deauthenticate a client from a specific WiFi network and capture the handshake when the client reconnects.

### Crack password

This option takes the captured .cap file and a password list to crack the WiFi password.

## Disclaimer

Using Cify or any similar tool for illegal activities is strictly prohibited and can lead to severe consequences. The developers of Cify are not responsible for any misuse of the tool. This tool is intended to be used for educational purposes only.

## License

Cify is released under the MIT License.

## Support

If you find any issues or want to contribute to the project, please open an issue or submit a pull request on the [GitHub repository](https://github.com/cypherdavy/Cify).

## Contact

For any inquiries, feel free to contact the developers at [davycypher@gmail.com](mailto:davycypher@gmail.com.)
