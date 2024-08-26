# ExtensionManifestV2Availability = 2

## Chromium-based browsers on Windows

The '.reg' file allows you to extend the use of Manifest V2 extensions, like uBlock Origin, beyond the phase-out date.

This policy applies to the following Chromium-based browsers&nbsp;:

- Brave Browser
- Chromium
- Google Chrome
- Microsoft Edge
- Vivaldi
- Yandex Browser

Note that the Opera browsers cannot be centrally managed this way.

**_=&gt; Please also note that the 'Secure DNS' setting in those Chromium-based browsers will be grayed out, since this policy coincidentally interferes with it._**

## Chromium and Chrome on Linux

Chromium&nbsp;: &nbsp;Execute the following command in a terminal&nbsp;:

    sudo mkdir -p /etc/chromium/policies/managed

Chrome&nbsp;: &nbsp;Execute the following command in a terminal&nbsp;:

    sudo mkdir -p /etc/opt/chrome/policies/managed

Next step&nbsp;: &nbsp;Copy the file "policy.json" into this newly created directory.

**_=&gt; Please also note that the 'Secure DNS' setting in Chromium/Chrome will be grayed out, since this policy coincidentally interferes with it._**
