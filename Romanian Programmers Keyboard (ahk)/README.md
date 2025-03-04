# Romanian Programmers Keyboard for AutoHotkey v2/v1.1

Romanian Programmers keyboard layout in AHK (overlay scripts for US QWERTY).  
These scripts can also be used to learn about the different key remappings and assignments in AutoHotkey v2 and v1.1.

## Keyboard Layout Image

![Romanian Programmers Keyboard - Layout Image](Romanian%20Programmers%20Keyboard%20-%20Layout%20Image.png)

## Prerequisites

These AutoHotkey scripts are highly customizable. To work properly, the Windows main/base keyboard layout has to be set to either&nbsp;:

- **Hausa (Latin, Nigeria)** =&gt; AltGr assigned to the layout (based on US QWERTY).
- **Romanian (Programmers)** =&gt; AltGr assigned to the layout (based on US QWERTY).
- **English (India)** =&gt; AltGr assigned to the layout (based on US QWERTY).
- **United States (US)** =&gt; Right Alt assigned to layout (secondary choice).

  (Notes: "Romanian (Programmers)" does not contain some special control codes (Ctrl+\[: u+001b, Ctrl+\\: u+001c, Ctrl+\]: u+001d), but I could not find any specific use cases requiring these mappings. "English (India)" also emits an Indian rupee sign (₹) via Ctrl+Shift+4.)

**_Note about the standard base US layout&nbsp;:_**

When two or more languages/keyboards are installed on the system, the default 'Alt + Shift' sequence will interfere with the AHK scripts.  
To avoid this, you can disable the interfering key sequences at&nbsp;:  
*Settings -&gt; Time &amp; Language -&gt; Language -&gt; Spelling, typing &amp; keyboard settings (on the right) -&gt; Advanced keyboard settings -&gt; Input language hot keys*  
Please note that on the standard US QWERTY, the sequence 'Left Alt + Shift' also gets mistakenly triggered by 'Right Alt + Shift', resulting in an unexpected keyboard layout change.
