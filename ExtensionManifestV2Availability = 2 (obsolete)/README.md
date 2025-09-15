# Custom Policies for Chromium-based Browsers (OBSOLETE)

These '.reg' and 'policy.json' files (inside the ZIP archives) allow you to extend the use of Manifest V2 (MV2) extensions, like uBlock Origin, beyond the phase-out date.

## Chromium-based browsers on Windows

This policy applies to the following Chromium-based browsers&nbsp;:

- Brave Browser
- Chromium
- Google Chrome
- Microsoft Edge
- Vivaldi
- (Yandex Browser - PUP/PUA: PLEASE DO NOT INSTALL OR USE)

Note that the Opera browsers cannot be centrally managed this way.

## Chromium and Chrome on Linux

Chromium&nbsp;: &nbsp;Execute the following command in a terminal (via sudo)&nbsp;:

    sudo mkdir -p /etc/chromium/policies/managed

Chrome&nbsp;: &nbsp;Execute the following command in a terminal (via sudo)&nbsp;:

    sudo mkdir -p /etc/opt/chrome/policies/managed

Next step&nbsp;: &nbsp;Copy the file "policy.json" into this newly created directory.

## Differences between those ZIP archives

- Custom Policies for Chromium-based Browsers - AdGuard DNS.zip&nbsp;:  
  - The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be set to 'AdGuard DNS' (dns.adguard-dns.com) (blocks ads, trackers and malicious domains).
  - The setting "Ask where to save each file before downloading" will be enabled for security reasons.
  - Support for MV2 extensions will be extended.
- Custom Policies for Chromium-based Browsers - DNS4EU.zip&nbsp;:
  - The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be set to 'DNS4EU Public Service' (noads.joindns4.eu) (blocks ads, trackers and malicious domains).
  - The setting "Ask where to save each file before downloading" will be enabled for security reasons.
  - Support for MV2 extensions will be extended.
- Custom Policies for Chromium-based Browsers - Mullvad DNS.zip&nbsp;:
  - The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be set to 'Mullvad DNS' (base.dns.mullvad.net) (blocks ads, trackers and malicious domains).
  - The setting "Ask where to save each file before downloading" will be enabled for security reasons.
  - Support for MV2 extensions will be extended.
- Custom Policies for Chromium-based Browsers - Google DNS.zip&nbsp;:  
  - The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be set to 'Google Public DNS' (dns.google) (note that all blocking at the DNS level will be disabled).
  - The setting "Ask where to save each file before downloading" will be enabled for security reasons.
  - Support for MV2 extensions will be extended.
- ExtensionManifestV2Availability = 2.zip&nbsp;:  
  - Only extends support for MV2 extensions. The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be disabled and grayed out, since this 'managed' policy also disables 'Secure DNS'.
