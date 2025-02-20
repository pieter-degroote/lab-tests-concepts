# UltimateKEYS - Legacy (AutoHotkey v2/v1.1)

These modifications will change the scripts into their previous 'legacy' versions.

## After the 'Compose Key Sequences', replace all code in the 'Configuration' sections

**AutoHotkey v2&nbsp;:**

```autohotkey
; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::Send "{u+00a1}"   ; (¡) inverted exclamation mark
>!+sc002::
<^>!+sc002::Send "{u+00b9}"  ; (¹) superscript 1

; Key :  2
>!sc003::
<^>!sc003::Send "{u+2264}"   ; (≤) less-than or equal to
>!+sc003::
<^>!+sc003::Send "{u+00b2}"  ; (²) superscript 2

; Key :  3
>!sc004::
<^>!sc004::Send "{u+2265}"   ; (≥) greater-than or equal to
>!+sc004::
<^>!+sc004::Send "{u+00b3}"  ; (³) superscript 3

; Key :  4
>!sc005::
<^>!sc005::Send "{u+00a3}"   ; (£) pound sign
>!+sc005::
<^>!+sc005::Send "{u+00a5}"  ; (¥) yen sign

; Key :  5
>!sc006::
<^>!sc006::Send "{u+20ac}"   ; (€) euro sign
>!+sc006::
<^>!+sc006::Send "{u+00a2}"  ; (¢) cent sign (dollar)

; Key :  6
>!sc007::
<^>!sc007:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c3}"  ; (Ã) A with tilde
  else
    Send "{u+00e3}"  ; (ã) a with tilde
}
>!+sc007::
<^>!+sc007:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e3}"  ; (ã) a with tilde
  else
    Send "{u+00c3}"  ; (Ã) A with tilde
}

; Key :  7
>!sc008::
<^>!sc008:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d5}"  ; (Õ) O with tilde
  else
    Send "{u+00f5}"  ; (õ) o with tilde
}
>!+sc008::
<^>!+sc008:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f5}"  ; (õ) o with tilde
  else
    Send "{u+00d5}"  ; (Õ) O with tilde
}

; Key :  8
>!sc009::
<^>!sc009::Send "{u+201e}"   ; („) double low-9 quotation mark
>!+sc009::
<^>!+sc009::Send "{u+00a7}"  ; (§) section sign

; Key :  9
>!sc00A::
<^>!sc00A::Send "{u+201c}"   ; (“) left double quotation mark
>!+sc00A::
<^>!+sc00A::Send "{u+2018}"  ; (‘) left single quotation mark

; Key :  0
>!sc00B::
<^>!sc00B::Send "{u+201d}"   ; (”) right double quotation mark
>!+sc00B::
<^>!+sc00B::Send "{u+2019}"  ; (’) right single quotation mark

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::Send "{u+2013}"   ; (–) en dash
>!+sc00C::
<^>!+sc00C::Send "{u+2014}"  ; (—) em dash

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send "{u+00d7}"   ; (×) multiplication sign
>!+sc00D::
<^>!+sc00D::Send "{u+00f7}"  ; (÷) division sign

; Key :  Q
>!sc010::
<^>!sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
>!+sc010::
<^>!+sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
}

; Key :  W
>!sc011::
<^>!sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c5}"  ; (Å) A with ring above
  else
    Send "{u+00e5}"  ; (å) a with ring above
}
>!+sc011::
<^>!+sc011:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e5}"  ; (å) a with ring above
  else
    Send "{u+00c5}"  ; (Å) A with ring above
}

; Key :  E
>!sc012::
<^>!sc012:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  else
    Send "{u+00eb}"  ; (ë) e with diaeresis
}
>!+sc012::
<^>!+sc012:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00eb}"  ; (ë) e with diaeresis
  else
    Send "{u+00cb}"  ; (Ë) E with diaeresis
}

; Key :  R
>!sc013::
<^>!sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ca}"  ; (Ê) E with circumflex
  else
    Send "{u+00ea}"  ; (ê) e with circumflex
}
>!+sc013::
<^>!+sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ea}"  ; (ê) e with circumflex
  else
    Send "{u+00ca}"  ; (Ê) E with circumflex
}

; Key :  T
>!sc014::
<^>!sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ce}"  ; (Î) I with circumflex
  else
    Send "{u+00ee}"  ; (î) i with circumflex
}
>!+sc014::
<^>!+sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ee}"  ; (î) i with circumflex
  else
    Send "{u+00ce}"  ; (Î) I with circumflex
}

; Key :  Y
>!sc015::
<^>!sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00db}"  ; (Û) U with circumflex
  else
    Send "{u+00fb}"  ; (û) u with circumflex
}
>!+sc015::
<^>!+sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fb}"  ; (û) u with circumflex
  else
    Send "{u+00db}"  ; (Û) U with circumflex
}

; Key :  U
>!sc016::
<^>!sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  else
    Send "{u+00fc}"  ; (ü) u with diaeresis
}
>!+sc016::
<^>!+sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fc}"  ; (ü) u with diaeresis
  else
    Send "{u+00dc}"  ; (Ü) U with diaeresis
}

; Key :  I
>!sc017::
<^>!sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  else
    Send "{u+00ef}"  ; (ï) i with diaeresis
}
>!+sc017::
<^>!+sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ef}"  ; (ï) i with diaeresis
  else
    Send "{u+00cf}"  ; (Ï) I with diaeresis
}

; Key :  O
>!sc018::
<^>!sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  else
    Send "{u+00f6}"  ; (ö) o with diaeresis
}
>!+sc018::
<^>!+sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f6}"  ; (ö) o with diaeresis
  else
    Send "{u+00d6}"  ; (Ö) O with diaeresis
}

; Key :  P
>!sc019::
<^>!sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d4}"  ; (Ô) O with circumflex
  else
    Send "{u+00f4}"  ; (ô) o with circumflex
}
>!+sc019::
<^>!+sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f4}"  ; (ô) o with circumflex
  else
    Send "{u+00d4}"  ; (Ô) O with circumflex
}

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send "{u+00ab}"   ; («) left-pointing double angle quotation mark
>!+sc01A::
<^>!+sc01A::Send "{u+2039}"  ; (‹) left-pointing single angle quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send "{u+00bb}"   ; (») right-pointing double angle quotation mark
>!+sc01B::
<^>!+sc01B::Send "{u+203a}"  ; (›) right-pointing single angle quotation mark

; Key :  A
>!sc01E::
<^>!sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  else
    Send "{u+00e4}"  ; (ä) a with diaeresis
}
>!+sc01E::
<^>!+sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e4}"  ; (ä) a with diaeresis
  else
    Send "{u+00c4}"  ; (Ä) A with diaeresis
}

; Key :  S
>!sc01F::
<^>!sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
}
>!+sc01F::
<^>!+sc01F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
  else
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
}

; Key :  D
>!sc020::
<^>!sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c2}"  ; (Â) A with circumflex
  else
    Send "{u+00e2}"  ; (â) a with circumflex
}
>!+sc020::
<^>!+sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e2}"  ; (â) a with circumflex
  else
    Send "{u+00c2}"  ; (Â) A with circumflex
}

; Key :  F
>!sc021::
<^>!sc021:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c8}"  ; (È) E with grave
  else
    Send "{u+00e8}"  ; (è) e with grave
}
>!+sc021::
<^>!+sc021:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e8}"  ; (è) e with grave
  else
    Send "{u+00c8}"  ; (È) E with grave
}

; Key :  G
>!sc022::
<^>!sc022:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c9}"  ; (É) E with acute
  else
    Send "{u+00e9}"  ; (é) e with acute
}
>!+sc022::
<^>!+sc022:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
  else
    Send "{u+00c9}"  ; (É) E with acute
}

; Key :  H
>!sc023::
<^>!sc023:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d9}"  ; (Ù) U with grave
  else
    Send "{u+00f9}"  ; (ù) u with grave
}
>!+sc023::
<^>!+sc023:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f9}"  ; (ù) u with grave
  else
    Send "{u+00d9}"  ; (Ù) U with grave
}

; Key :  J
>!sc024::
<^>!sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00da}"  ; (Ú) U with acute
  else
    Send "{u+00fa}"  ; (ú) u with acute
}
>!+sc024::
<^>!+sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fa}"  ; (ú) u with acute
  else
    Send "{u+00da}"  ; (Ú) U with acute
}

; Key :  K
>!sc025::
<^>!sc025:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0152}"  ; (Œ) ligature OE
  else
    Send "{u+0153}"  ; (œ) ligature oe
}
>!+sc025::
<^>!+sc025:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0153}"  ; (œ) ligature oe
  else
    Send "{u+0152}"  ; (Œ) ligature OE
}

; Key :  L
>!sc026::
<^>!sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d8}"  ; (Ø) O with stroke
  else
    Send "{u+00f8}"  ; (ø) o with stroke
}
>!+sc026::
<^>!+sc026:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f8}"  ; (ø) o with stroke
  else
    Send "{u+00d8}"  ; (Ø) O with stroke
}

; Key :  ; / : (semicolon / colon)
>!sc027::
<^>!sc027::Send "{u+00b0}"   ; (°) degree sign
>!+sc027::
<^>!+sc027::Send "{u+00b7}"  ; (·) middle dot

; Key :  ' / " (apostrophe / quotation mark)
>!sc028::
<^>!sc028::Send "{u+2020}"   ; (†) dagger
>!+sc028::
<^>!+sc028::Send "{u+2021}"  ; (‡) double dagger

; Key :  \ / | (backslash / vertical line)
>!sc02B::
<^>!sc02B::Send "{u+2002}"   ; en space
>!+sc02B::
<^>!+sc02B::Send "{u+2003}"  ; em space

; Key :  Z
>!sc02C::
<^>!sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c0}"  ; (À) A with grave
  else
    Send "{u+00e0}"  ; (à) a with grave
}
>!+sc02C::
<^>!+sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e0}"  ; (à) a with grave
  else
    Send "{u+00c0}"  ; (À) A with grave
}

; Key :  X
>!sc02D::
<^>!sc02D:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c1}"  ; (Á) A with acute
  else
    Send "{u+00e1}"  ; (á) a with acute
}
>!+sc02D::
<^>!+sc02D:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e1}"  ; (á) a with acute
  else
    Send "{u+00c1}"  ; (Á) A with acute
}

; Key :  C
>!sc02E::
<^>!sc02E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c7}"  ; (Ç) C with cedilla
  else
    Send "{u+00e7}"  ; (ç) c with cedilla
}
>!+sc02E::
<^>!+sc02E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "{u+00c7}"  ; (Ç) C with cedilla
}

; Key :  V
>!sc02F::
<^>!sc02F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cc}"  ; (Ì) I with grave
  else
    Send "{u+00ec}"  ; (ì) i with grave
}
>!+sc02F::
<^>!+sc02F:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ec}"  ; (ì) i with grave
  else
    Send "{u+00cc}"  ; (Ì) I with grave
}

; Key :  B
>!sc030::
<^>!sc030:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cd}"  ; (Í) I with acute
  else
    Send "{u+00ed}"  ; (í) i with acute
}
>!+sc030::
<^>!+sc030:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ed}"  ; (í) i with acute
  else
    Send "{u+00cd}"  ; (Í) I with acute
}

; Key :  N
>!sc031::
<^>!sc031:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d1}"  ; (Ñ) N with tilde
  else
    Send "{u+00f1}"  ; (ñ) n with tilde
}
>!+sc031::
<^>!+sc031:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f1}"  ; (ñ) n with tilde
  else
    Send "{u+00d1}"  ; (Ñ) N with tilde
}

; Key :  M
>!sc032::
<^>!sc032::Send "{u+00b5}"   ; (µ) micro sign
>!+sc032::
<^>!+sc032::Send "{u+00b1}"  ; (±) plus-minus sign

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d2}"  ; (Ò) O with grave
  else
    Send "{u+00f2}"  ; (ò) o with grave
}
>!+sc033::
<^>!+sc033:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f2}"  ; (ò) o with grave
  else
    Send "{u+00d2}"  ; (Ò) O with grave
}

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d3}"  ; (Ó) O with acute
  else
    Send "{u+00f3}"  ; (ó) o with acute
}
>!+sc034::
<^>!+sc034:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f3}"  ; (ó) o with acute
  else
    Send "{u+00d3}"  ; (Ó) O with acute
}

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::Send "{u+00bf}"   ; (¿) inverted question mark
>!+sc035::
<^>!+sc035::Send "{u+2022}"  ; (•) bullet

; Key :  (space)
>!sc039::
<^>!sc039::Send "{u+00a0}"   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send "{u+00a0}"  ; non-breaking space (NBSP)


; Configuration :  Compose Key Selector

>!sc029::      ; Right Alt + Grave Accent
>!sc056::      ; Right Alt + ISO Key
<^>!sc029::    ; AltGr + Grave Accent
<^>!sc056:: {  ; AltGr + ISO Key
  ih := InputHook("L2", gEndKeys)
  ih.Start(), ih.Wait()
  if compose.Has(ih.Input)
    Send compose[ih.Input]
}
```

**AutoHotkey v1.1&nbsp;:**

```autohotkey
; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::Send {u+00a1}   ; (¡) inverted exclamation mark
>!+sc002::
<^>!+sc002::Send {u+00b9}  ; (¹) superscript 1

; Key :  2
>!sc003::
<^>!sc003::Send {u+2264}   ; (≤) less-than or equal to
>!+sc003::
<^>!+sc003::Send {u+00b2}  ; (²) superscript 2

; Key :  3
>!sc004::
<^>!sc004::Send {u+2265}   ; (≥) greater-than or equal to
>!+sc004::
<^>!+sc004::Send {u+00b3}  ; (³) superscript 3

; Key :  4
>!sc005::
<^>!sc005::Send {u+00a3}   ; (£) pound sign
>!+sc005::
<^>!+sc005::Send {u+00a5}  ; (¥) yen sign

; Key :  5
>!sc006::
<^>!sc006::Send {u+20ac}   ; (€) euro sign
>!+sc006::
<^>!+sc006::Send {u+00a2}  ; (¢) cent sign (dollar)

; Key :  6
>!sc007::
<^>!sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+00c3}  ; (Ã) A with tilde
  else
    Send {u+00e3}  ; (ã) a with tilde
  return
>!+sc007::
<^>!+sc007::
  if GetKeyState("CapsLock", "T")
    Send {u+00e3}  ; (ã) a with tilde
  else
    Send {u+00c3}  ; (Ã) A with tilde
  return

; Key :  7
>!sc008::
<^>!sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+00d5}  ; (Õ) O with tilde
  else
    Send {u+00f5}  ; (õ) o with tilde
  return
>!+sc008::
<^>!+sc008::
  if GetKeyState("CapsLock", "T")
    Send {u+00f5}  ; (õ) o with tilde
  else
    Send {u+00d5}  ; (Õ) O with tilde
  return

; Key :  8
>!sc009::
<^>!sc009::Send {u+201e}   ; („) double low-9 quotation mark
>!+sc009::
<^>!+sc009::Send {u+00a7}  ; (§) section sign

; Key :  9
>!sc00A::
<^>!sc00A::Send {u+201c}   ; (“) left double quotation mark
>!+sc00A::
<^>!+sc00A::Send {u+2018}  ; (‘) left single quotation mark

; Key :  0
>!sc00B::
<^>!sc00B::Send {u+201d}   ; (”) right double quotation mark
>!+sc00B::
<^>!+sc00B::Send {u+2019}  ; (’) right single quotation mark

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::Send {u+2013}   ; (–) en dash
>!+sc00C::
<^>!+sc00C::Send {u+2014}  ; (—) em dash

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send {u+00d7}   ; (×) multiplication sign
>!+sc00D::
<^>!+sc00D::Send {u+00f7}  ; (÷) division sign

; Key :  Q
>!sc010::
<^>!sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00c6}  ; (Æ) letter AE
  else
    Send {u+00e6}  ; (æ) letter ae
  return
>!+sc010::
<^>!+sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+00e6}  ; (æ) letter ae
  else
    Send {u+00c6}  ; (Æ) letter AE
  return

; Key :  W
>!sc011::
<^>!sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+00c5}  ; (Å) A with ring above
  else
    Send {u+00e5}  ; (å) a with ring above
  return
>!+sc011::
<^>!+sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+00e5}  ; (å) a with ring above
  else
    Send {u+00c5}  ; (Å) A with ring above
  return

; Key :  E
>!sc012::
<^>!sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+00cb}  ; (Ë) E with diaeresis
  else
    Send {u+00eb}  ; (ë) e with diaeresis
  return
>!+sc012::
<^>!+sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+00eb}  ; (ë) e with diaeresis
  else
    Send {u+00cb}  ; (Ë) E with diaeresis
  return

; Key :  R
>!sc013::
<^>!sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+00ca}  ; (Ê) E with circumflex
  else
    Send {u+00ea}  ; (ê) e with circumflex
  return
>!+sc013::
<^>!+sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+00ea}  ; (ê) e with circumflex
  else
    Send {u+00ca}  ; (Ê) E with circumflex
  return

; Key :  T
>!sc014::
<^>!sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00ce}  ; (Î) I with circumflex
  else
    Send {u+00ee}  ; (î) i with circumflex
  return
>!+sc014::
<^>!+sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+00ee}  ; (î) i with circumflex
  else
    Send {u+00ce}  ; (Î) I with circumflex
  return

; Key :  Y
>!sc015::
<^>!sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+00db}  ; (Û) U with circumflex
  else
    Send {u+00fb}  ; (û) u with circumflex
  return
>!+sc015::
<^>!+sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+00fb}  ; (û) u with circumflex
  else
    Send {u+00db}  ; (Û) U with circumflex
  return

; Key :  U
>!sc016::
<^>!sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+00dc}  ; (Ü) U with diaeresis
  else
    Send {u+00fc}  ; (ü) u with diaeresis
  return
>!+sc016::
<^>!+sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+00fc}  ; (ü) u with diaeresis
  else
    Send {u+00dc}  ; (Ü) U with diaeresis
  return

; Key :  I
>!sc017::
<^>!sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00cf}  ; (Ï) I with diaeresis
  else
    Send {u+00ef}  ; (ï) i with diaeresis
  return
>!+sc017::
<^>!+sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+00ef}  ; (ï) i with diaeresis
  else
    Send {u+00cf}  ; (Ï) I with diaeresis
  return

; Key :  O
>!sc018::
<^>!sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+00d6}  ; (Ö) O with diaeresis
  else
    Send {u+00f6}  ; (ö) o with diaeresis
  return
>!+sc018::
<^>!+sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+00f6}  ; (ö) o with diaeresis
  else
    Send {u+00d6}  ; (Ö) O with diaeresis
  return

; Key :  P
>!sc019::
<^>!sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+00d4}  ; (Ô) O with circumflex
  else
    Send {u+00f4}  ; (ô) o with circumflex
  return
>!+sc019::
<^>!+sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+00f4}  ; (ô) o with circumflex
  else
    Send {u+00d4}  ; (Ô) O with circumflex
  return

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send {u+00ab}   ; («) left-pointing double angle quotation mark
>!+sc01A::
<^>!+sc01A::Send {u+2039}  ; (‹) left-pointing single angle quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send {u+00bb}   ; (») right-pointing double angle quotation mark
>!+sc01B::
<^>!+sc01B::Send {u+203a}  ; (›) right-pointing single angle quotation mark

; Key :  A
>!sc01E::
<^>!sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+00c4}  ; (Ä) A with diaeresis
  else
    Send {u+00e4}  ; (ä) a with diaeresis
  return
>!+sc01E::
<^>!+sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+00e4}  ; (ä) a with diaeresis
  else
    Send {u+00c4}  ; (Ä) A with diaeresis
  return

; Key :  S
>!sc01F::
<^>!sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  return
>!+sc01F::
<^>!+sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  else
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  return

; Key :  D
>!sc020::
<^>!sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+00c2}  ; (Â) A with circumflex
  else
    Send {u+00e2}  ; (â) a with circumflex
  return
>!+sc020::
<^>!+sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+00e2}  ; (â) a with circumflex
  else
    Send {u+00c2}  ; (Â) A with circumflex
  return

; Key :  F
>!sc021::
<^>!sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+00c8}  ; (È) E with grave
  else
    Send {u+00e8}  ; (è) e with grave
  return
>!+sc021::
<^>!+sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send {u+00c8}  ; (È) E with grave
  return

; Key :  G
>!sc022::
<^>!sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+00c9}  ; (É) E with acute
  else
    Send {u+00e9}  ; (é) e with acute
  return
>!+sc022::
<^>!+sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send {u+00c9}  ; (É) E with acute
  return

; Key :  H
>!sc023::
<^>!sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+00d9}  ; (Ù) U with grave
  else
    Send {u+00f9}  ; (ù) u with grave
  return
>!+sc023::
<^>!+sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+00f9}  ; (ù) u with grave
  else
    Send {u+00d9}  ; (Ù) U with grave
  return

; Key :  J
>!sc024::
<^>!sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+00da}  ; (Ú) U with acute
  else
    Send {u+00fa}  ; (ú) u with acute
  return
>!+sc024::
<^>!+sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+00fa}  ; (ú) u with acute
  else
    Send {u+00da}  ; (Ú) U with acute
  return

; Key :  K
>!sc025::
<^>!sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+0152}  ; (Œ) ligature OE
  else
    Send {u+0153}  ; (œ) ligature oe
  return
>!+sc025::
<^>!+sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+0153}  ; (œ) ligature oe
  else
    Send {u+0152}  ; (Œ) ligature OE
  return

; Key :  L
>!sc026::
<^>!sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+00d8}  ; (Ø) O with stroke
  else
    Send {u+00f8}  ; (ø) o with stroke
  return
>!+sc026::
<^>!+sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+00f8}  ; (ø) o with stroke
  else
    Send {u+00d8}  ; (Ø) O with stroke
  return

; Key :  ; / : (semicolon / colon)
>!sc027::
<^>!sc027::Send {u+00b0}   ; (°) degree sign
>!+sc027::
<^>!+sc027::Send {u+00b7}  ; (·) middle dot

; Key :  ' / " (apostrophe / quotation mark)
>!sc028::
<^>!sc028::Send {u+2020}   ; (†) dagger
>!+sc028::
<^>!+sc028::Send {u+2021}  ; (‡) double dagger

; Key :  \ / | (backslash / vertical line)
>!sc02B::
<^>!sc02B::Send {u+2002}   ; en space
>!+sc02B::
<^>!+sc02B::Send {u+2003}  ; em space

; Key :  Z
>!sc02C::
<^>!sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+00c0}  ; (À) A with grave
  else
    Send {u+00e0}  ; (à) a with grave
  return
>!+sc02C::
<^>!+sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send {u+00c0}  ; (À) A with grave
  return

; Key :  X
>!sc02D::
<^>!sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+00c1}  ; (Á) A with acute
  else
    Send {u+00e1}  ; (á) a with acute
  return
>!+sc02D::
<^>!+sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+00e1}  ; (á) a with acute
  else
    Send {u+00c1}  ; (Á) A with acute
  return

; Key :  C
>!sc02E::
<^>!sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+00c7}  ; (Ç) C with cedilla
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
>!+sc02E::
<^>!+sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send {u+00c7}  ; (Ç) C with cedilla
  return

; Key :  V
>!sc02F::
<^>!sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+00cc}  ; (Ì) I with grave
  else
    Send {u+00ec}  ; (ì) i with grave
  return
>!+sc02F::
<^>!+sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+00ec}  ; (ì) i with grave
  else
    Send {u+00cc}  ; (Ì) I with grave
  return

; Key :  B
>!sc030::
<^>!sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+00cd}  ; (Í) I with acute
  else
    Send {u+00ed}  ; (í) i with acute
  return
>!+sc030::
<^>!+sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+00ed}  ; (í) i with acute
  else
    Send {u+00cd}  ; (Í) I with acute
  return

; Key :  N
>!sc031::
<^>!sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+00d1}  ; (Ñ) N with tilde
  else
    Send {u+00f1}  ; (ñ) n with tilde
  return
>!+sc031::
<^>!+sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+00f1}  ; (ñ) n with tilde
  else
    Send {u+00d1}  ; (Ñ) N with tilde
  return

; Key :  M
>!sc032::
<^>!sc032::Send {u+00b5}   ; (µ) micro sign
>!+sc032::
<^>!+sc032::Send {u+00b1}  ; (±) plus-minus sign

; Key :  , / < (comma / less-than sign)
>!sc033::
<^>!sc033::
  if GetKeyState("CapsLock", "T")
    Send {u+00d2}  ; (Ò) O with grave
  else
    Send {u+00f2}  ; (ò) o with grave
  return
>!+sc033::
<^>!+sc033::
  if GetKeyState("CapsLock", "T")
    Send {u+00f2}  ; (ò) o with grave
  else
    Send {u+00d2}  ; (Ò) O with grave
  return

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034::
  if GetKeyState("CapsLock", "T")
    Send {u+00d3}  ; (Ó) O with acute
  else
    Send {u+00f3}  ; (ó) o with acute
  return
>!+sc034::
<^>!+sc034::
  if GetKeyState("CapsLock", "T")
    Send {u+00f3}  ; (ó) o with acute
  else
    Send {u+00d3}  ; (Ó) O with acute
  return

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::Send {u+00bf}   ; (¿) inverted question mark
>!+sc035::
<^>!+sc035::Send {u+2022}  ; (•) bullet

; Key :  (space)
>!sc039::
<^>!sc039::Send {u+00a0}   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send {u+00a0}  ; non-breaking space (NBSP)


; Configuration :  Compose Key Selector

>!sc029::    ; Right Alt + Grave Accent
>!sc056::    ; Right Alt + ISO Key
<^>!sc029::  ; AltGr + Grave Accent
<^>!sc056::  ; AltGr + ISO Key
  ih := InputHook("L2", gEndKeys)
  ih.Start(), ih.Wait()
  Send % compose.item[ih.Input]
  return
```
