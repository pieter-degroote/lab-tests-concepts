# EurKEY - AutoHotkey Scripts for v2/v1.1 (testing)

This folder contains the unofficial AHK scripts for EurKEY v1.1 to v1.3.  
The EurKEY scripts are simply targeted towards more 'conservative' users (meeting their basic needs).  
On the other hand, UltimateKEYS generally takes a more dynamic and advanced approach instead.

**See also at&nbsp;: &nbsp;https://github.com/pieter-degroote/EurKEY-clone**

## Prerequisites

To work properly, the Windows main/base keyboard layout has to be set to&nbsp;:

**=&gt; AltGr assigned to EurKEY**

- [US QWERTY (Euro)](https://github.com/pieter-degroote/us-qwerty-euro)&emsp;[![Core Release](https://img.shields.io/github/release/pieter-degroote/us-qwerty-euro.svg)](https://github.com/pieter-degroote/us-qwerty-euro/releases)
- [US Intl AltGr dead keys](https://github.com/pieter-degroote/us-intl-altgr-dk)&emsp;[![Core Release](https://img.shields.io/github/release/pieter-degroote/us-intl-altgr-dk.svg)](https://github.com/pieter-degroote/us-intl-altgr-dk/releases)
- EurKEY Keyboard Layout (MSKLC, any version)
- [UltimateKEYS (MSKLC implementation)](https://pieter-degroote.github.io/UltimateKEYS/integration-msklc.html)&emsp;[![Core Release](https://img.shields.io/github/release/pieter-degroote/UltimateKEYS-core.svg?label=core)](https://github.com/pieter-degroote/UltimateKEYS-core/releases)
- Hausa (Latin, Nigeria) (based on US QWERTY, see settings)
- Romanian (Programmers) (based on US QWERTY, see settings)
- English (India) (based on US QWERTY, see settings)
- or any other layout that is fully based on US QWERTY

**=&gt; Right Alt assigned to EurKEY (secondary choice)**

- United States (US)

Notes&nbsp;: &nbsp;"Romanian (Programmers)" does not contain some special control codes (Ctrl+\[: u+001b, Ctrl+\\: u+001c, Ctrl+\]: u+001d), but I could not find any specific use cases requiring these mappings. "English (India)" also emits an Indian rupee sign (₹) via Ctrl+Shift+4.

**_Note about the standard base US layout&nbsp;:_**

When two or more languages/keyboards are installed on the system, the default 'Alt + Shift' sequence will interfere with the AHK scripts.  
To avoid this, you can disable the interfering key sequences at&nbsp;:  
*Settings -&gt; Time &amp; Language -&gt; Language -&gt; Spelling, typing &amp; keyboard settings (on the right) -&gt; Advanced keyboard settings -&gt; Input language hot keys*  
Please note that on the standard US QWERTY, the sequence 'Left Alt + Shift' also gets mistakenly triggered by 'Right Alt + Shift', resulting in an unexpected keyboard layout change.
