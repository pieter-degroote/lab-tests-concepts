# UltimateKEYS - Colemak Variant

This modification features a Colemak variant of UltimateKEYS (for AutoHotkey v2/v1.1).

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

**AutoHotkey v2/v1.1&nbsp;:**

```autohotkey
; Configuration :  Switch letters to Colemak

sc012::sc021  ; E becomes F
sc013::sc019  ; R becomes P
sc014::sc022  ; T becomes G
sc015::sc024  ; Y becomes J
sc016::sc026  ; U becomes L
sc017::sc016  ; I becomes U
sc018::sc015  ; O becomes Y
sc019::sc027  ; P becomes ;
sc01F::sc013  ; S becomes R
sc020::sc01F  ; D becomes S
sc021::sc014  ; F becomes T
sc022::sc020  ; G becomes D
sc024::sc031  ; J becomes N
sc025::sc012  ; K becomes E
sc026::sc017  ; L becomes I
sc027::sc018  ; ; becomes O
sc031::sc025  ; N becomes K


; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
```
