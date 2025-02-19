# UltimateKEYS - Colemak-DH mod (concept)

Colemak-DH mod of UltimateKEYS - For AutoHotkey v2/v1.1 (Win) and XKB/Xmodmap (Linux)

**Keyboard Layout Image - ANSI&nbsp;:**

![UltimateKEYS - Colemak-DH ANSI mod - Keyboard Layout Image](UltimateKEYS%20-%20Colemak-DH%20ANSI%20mod%20-%20Keyboard%20Layout%20Image.png)

**Keyboard Layout Image - ISO&nbsp;:**

![UltimateKEYS - Colemak-DH ISO mod - Keyboard Layout Image](UltimateKEYS%20-%20Colemak-DH%20ISO%20mod%20-%20Keyboard%20Layout%20Image.png)

## Prerequisites (for AutoHotkey v2/v1.1)

See `AutoHotkey - README.md` for detailed instructions. To work properly, the Windows main/base keyboard layout has to be set to either&nbsp;:

- **Hausa (Latin, Nigeria)** =&gt; AltGr assigned to UltimateKEYS (based on US QWERTY).
- **Romanian (Programmers)** =&gt; AltGr assigned to UltimateKEYS (based on US QWERTY).
- **English (India)** =&gt; AltGr assigned to UltimateKEYS (based on US QWERTY).
- **United States (US)** =&gt; Right Alt assigned to UltimateKEYS (secondary choice).

  (Notes: "Romanian (Programmers)" does not contain some special control codes (Ctrl+\[: u+001b, Ctrl+\\: u+001c, Ctrl+\]: 001d), but I could not find any specific use cases requiring these mappings. "English (India)" also emits an Indian rupee sign (₹) via Ctrl+Shift+4.)

**_Note about the standard base US layout&nbsp;:_**

When two or more languages/keyboards are installed on the system, the default 'Alt + Shift' sequence will interfere with the AHK scripts.  
To avoid this, you can disable the interfering key sequences at&nbsp;:  
*Settings -&gt; Time &amp; Language -&gt; Language -&gt; Spelling, typing &amp; keyboard settings (on the right) -&gt; Advanced keyboard settings -&gt; Input language hot keys*  
Please note that on the standard US QWERTY, the sequence 'Left Alt + Shift' also gets mistakenly triggered by 'Right Alt + Shift', resulting in an unexpected keyboard layout change.
