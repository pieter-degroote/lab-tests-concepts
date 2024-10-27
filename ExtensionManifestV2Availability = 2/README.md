# ExtensionManifestV2Availability = 2

These '.reg' and 'policy.json' files (inside the ZIP archives) allow you to extend the use of Manifest V2 (MV2) extensions, like uBlock Origin, beyond the phase-out date.

## Chromium-based browsers on Windows

This policy applies to the following Chromium-based browsers&nbsp;:

- Brave Browser
- Chromium
- Google Chrome
- Microsoft Edge
- Vivaldi
- Yandex Browser

Note that the Opera browsers cannot be centrally managed this way.

## Chromium and Chrome on Linux

Chromium&nbsp;: &nbsp;Execute the following command in a terminal&nbsp;:

    sudo mkdir -p /etc/chromium/policies/managed

Chrome&nbsp;: &nbsp;Execute the following command in a terminal&nbsp;:

    sudo mkdir -p /etc/opt/chrome/policies/managed

Next step&nbsp;: &nbsp;Copy one of the files "policy.json" into this newly created directory.

## Difference between both ZIP archives

- Custom Policies for Chromium-based Browsers.zip&nbsp;: &nbsp;Enables the following policies&nbsp;:
  - The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be set to 'Google Public DNS'.
  - The setting "Ask where to save each file before downloading" will be enabled for reasons of security.
  - Support for MV2 extensions will be extended.
- ExtensionManifestV2Availability = 2.zip&nbsp;: &nbsp;Only extends support for MV2 extensions. The 'Secure DNS' (DoH) setting in those Chromium-based browsers will be disabled and grayed out, since this 'managed' policy also disables 'Secure DNS'.
