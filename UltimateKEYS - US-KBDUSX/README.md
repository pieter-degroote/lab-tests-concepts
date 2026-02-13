# UltimateKEYS - US-KBDUSX (AutoHotkey v2/v1.1)

These modifications allow the AutoHotkey scripts to work on both "US QWERTY" and "US-International" as base layouts, as well as others.  
Note that the period (.) is explicitly assigned to the 'numpad dot' to make the scripts even better compatible with more US-based layouts.

## 1. Change "SendMode" from "Input" to "Event"

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

```autohotkey
SendMode "Event"  ; allows chaining of customized key combinations
```

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

```autohotkey
SendMode Event  ; allows chaining of customized key combinations
```

## 2. Append the following code to the regular script(s)

**AutoHotkey v2&nbsp;:**

```autohotkey
; Configuration :  US QWERTY re-assignments (KBDUSX)

+sc007::Send "{u+005e}"     ; (^) circumflex accent

sc028::Send "{u+0027}"      ; (') apostrophe
+sc028::Send "{u+0022}"     ; (") quotation mark

sc029::Send "{u+0060}"      ; (`) grave accent
+sc029::Send "{u+007e}"     ; (~) tilde

NumpadDot::Send "{u+002e}"  ; (.) period
```

**AutoHotkey v1.1&nbsp;:**

```autohotkey
; Configuration :  US QWERTY re-assignments (KBDUSX)

+sc007::Send {u+005e}     ; (^) circumflex accent

sc028::Send {u+0027}      ; (') apostrophe
+sc028::Send {u+0022}     ; (") quotation mark

sc029::Send {u+0060}      ; (`) grave accent
+sc029::Send {u+007e}     ; (~) tilde

NumpadDot::Send {u+002e}  ; (.) period
```
