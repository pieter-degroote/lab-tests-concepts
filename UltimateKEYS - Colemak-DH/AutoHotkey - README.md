# UltimateKEYS - Colemak-DH Variants

This modification features a Colemak-DH mod variant of UltimateKEYS (for AutoHotkey v2/v1.1).

## 1. Change "SendMode" from "Input" to "Event"

**AutoHotkey v1.1&nbsp;: &nbsp;Change `SendMode Input` to&nbsp;:**

```autohotkey
SendMode Event  ; allows chaining of customized key combinations
```

**AutoHotkey v2&nbsp;: &nbsp;Change `SendMode "Input"` to&nbsp;:**

```autohotkey
SendMode "Event"  ; allows chaining of customized key combinations
```

## 2. Append one of the following code snippets to the regular script(s)

**Colemak-DH ANSI - AutoHotkey v2/v1.1&nbsp;:**

```autohotkey
; Configuration :  Switch letters to Colemak-DH ANSI

sc012::sc021  ; E becomes F
sc013::sc019  ; R becomes P
sc014::sc030  ; T becomes B
sc015::sc024  ; Y becomes J
sc016::sc026  ; U becomes L
sc017::sc016  ; I becomes U
sc018::sc015  ; O becomes Y
sc019::sc027  ; P becomes ;
sc01F::sc013  ; S becomes R
sc020::sc01F  ; D becomes S
sc021::sc014  ; F becomes T
sc023::sc032  ; H becomes M
sc024::sc031  ; J becomes N
sc025::sc012  ; K becomes E
sc026::sc017  ; L becomes I
sc027::sc018  ; ; becomes O
sc02C::sc02D  ; Z becomes X
sc02D::sc02E  ; X becomes C
sc02E::sc020  ; C becomes D
sc030::sc02C  ; B becomes Z
sc031::sc025  ; N becomes K
sc032::sc023  ; M becomes H
sc056::sc02C  ; ISO key becomes Z (in theory)


; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
```

**Colemak-DH ISO - AutoHotkey v2/v1.1&nbsp;:**

```autohotkey
; Configuration :  Switch letters to Colemak-DH ISO

sc012::sc021  ; E becomes F
sc013::sc019  ; R becomes P
sc014::sc030  ; T becomes B
sc015::sc024  ; Y becomes J
sc016::sc026  ; U becomes L
sc017::sc016  ; I becomes U
sc018::sc015  ; O becomes Y
sc019::sc027  ; P becomes ;
sc01F::sc013  ; S becomes R
sc020::sc01F  ; D becomes S
sc021::sc014  ; F becomes T
sc023::sc032  ; H becomes M
sc024::sc031  ; J becomes N
sc025::sc012  ; K becomes E
sc026::sc017  ; L becomes I
sc027::sc018  ; ; becomes O
sc02C::sc02D  ; Z becomes X
sc02D::sc02E  ; X becomes C
sc02E::sc020  ; C becomes D
sc030::#      ; b becomes #
+sc030::~     ; B becomes ~
sc031::sc025  ; N becomes K
sc032::sc023  ; M becomes H
sc056::sc02C  ; ISO key becomes Z


; Configuration :  Assign 'Caps Lock' to both 'Shift' keys and 'Backspace' also to 'Caps Lock'

LShift & RShift::CapsLock  ; assigns 'Caps Lock' to 'Left Shift' and 'Right Shift'
RShift & LShift::CapsLock  ; assigns 'Caps Lock' to 'Right Shift' and 'Left Shift'

CapsLock::Backspace  ; assigns 'Backspace' also to 'Caps Lock'
```
