# Custom Policies for Firefox

The "policies.json" file (inside the ZIP archives) allows you to customize some general settings on Mozilla Firefox.

## Firefox on Windows

In the same folder (directory) where "firefox.exe" is located (usually: c:\Program Files\Mozilla Firefox), create a new folder `distribution`. Then put "policies.json" in that newly created folder.

## Firefox on Linux

Execute the following command in a terminal (via sudo)&nbsp;:

    sudo mkdir -p /etc/firefox/policies

Next step&nbsp;: &nbsp;Copy the file "policies.json" into this newly created directory.

## Differences between those ZIP archives

- Custom Policies for Firefox - AdGuard DNS.zip&nbsp;:  
  - The 'Secure DNS' (DoH) setting will be set to 'AdGuard DNS' (dns.adguard-dns.com) (blocks ads, trackers and malicious domains).
  - The setting "Always ask you where to save files" will be enabled for security reasons.
- Custom Policies for Firefox - DNS4EU.zip&nbsp;:
  - The 'Secure DNS' (DoH) setting will be set to 'DNS4EU Public Service' (noads.joindns4.eu) (blocks ads, trackers and malicious domains).
  - The setting "Always ask you where to save files" will be enabled for security reasons.
- Custom Policies for Firefox - Mullvad DNS (base).zip&nbsp;:
  - The 'Secure DNS' (DoH) setting will be set to 'Mullvad DNS' (base.dns.mullvad.net) (blocks ads, trackers and malicious domains).
  - The setting "Always ask you where to save files" will be enabled for security reasons.
