; Belgian AZERTY (Shift Lock for letters and digits).ahk - 2021-10-26

; Created by :  Pieter Degroote

; License :     GNU General Public License Version 3

; GitHub :      https://github.com/pieter-degroote/UltimateKEYS


; Requirements :

; Keyboard layout (on Windows OS) :  US QWERTY

; AutoHotkey v1.1 (https://www.autohotkey.com/)



ListLines Off   ; omits recently executed lines from history (for privacy and security)
#KeyHistory 0   ; disables the key history (for privacy and security)

SendMode Event  ; allows chaining of customized key combinations (default)


; Dead Key :  Circumflex Accent

dkCircumflex := ComObjCreate("Scripting.Dictionary")
dkCircumflex.item["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex.item["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex.item["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex.item["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex.item["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex.item["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex.item["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex.item["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex.item["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex.item["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex.item["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex.item["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex.item["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex.item["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex.item["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex.item["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex.item["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex.item["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex.item["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex.item["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex.item["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex.item["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex.item["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex.item["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex.item["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex.item["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex.item[" "] := "{^}"       ;     circumflex accent


; Dead Key :  Acute Accent

dkAcuteAccent := ComObjCreate("Scripting.Dictionary")
dkAcuteAccent.item["a"] := "{u+00e1}"  ; (á) a with acute
dkAcuteAccent.item["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcuteAccent.item["c"] := "{u+0107}"  ; (ć) c with acute
dkAcuteAccent.item["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcuteAccent.item["e"] := "{u+00e9}"  ; (é) e with acute
dkAcuteAccent.item["E"] := "{u+00c9}"  ; (É) E with acute
dkAcuteAccent.item["f"] := "{u+0192}"  ; (ƒ) f with hook
dkAcuteAccent.item["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkAcuteAccent.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcuteAccent.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcuteAccent.item["i"] := "{u+00ed}"  ; (í) i with acute
dkAcuteAccent.item["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcuteAccent.item["j"] := "{u+0133}"  ; (ĳ) ligature ij
dkAcuteAccent.item["J"] := "{u+0132}"  ; (Ĳ) ligature IJ
dkAcuteAccent.item["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcuteAccent.item["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcuteAccent.item["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcuteAccent.item["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcuteAccent.item["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcuteAccent.item["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcuteAccent.item["n"] := "{u+0144}"  ; (ń) n with acute
dkAcuteAccent.item["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcuteAccent.item["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcuteAccent.item["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcuteAccent.item["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcuteAccent.item["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcuteAccent.item["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcuteAccent.item["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcuteAccent.item["s"] := "{u+015b}"  ; (ś) s with acute
dkAcuteAccent.item["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcuteAccent.item["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcuteAccent.item["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcuteAccent.item["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcuteAccent.item["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcuteAccent.item["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcuteAccent.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcuteAccent.item["z"] := "{u+017a}"  ; (ź) z with acute
dkAcuteAccent.item["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcuteAccent.item[" "] := "{u+00b4}"  ; (´) acute accent


; Dead Key :  Diaeresis

dkDiaeresis := ComObjCreate("Scripting.Dictionary")
dkDiaeresis.item["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis.item["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis.item["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis.item["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis.item["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis.item["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis.item["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis.item["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis.item["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis.item["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis.item["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis.item["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis.item["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis.item["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis.item["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis.item["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis.item["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis.item["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis.item["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis.item[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

dkGraveAccent := ComObjCreate("Scripting.Dictionary")
dkGraveAccent.item["a"] := "{u+00e0}"  ; (à) a with grave
dkGraveAccent.item["A"] := "{u+00c0}"  ; (À) A with grave
dkGraveAccent.item["e"] := "{u+00e8}"  ; (è) e with grave
dkGraveAccent.item["E"] := "{u+00c8}"  ; (È) E with grave
dkGraveAccent.item["i"] := "{u+00ec}"  ; (ì) i with grave
dkGraveAccent.item["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGraveAccent.item["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGraveAccent.item["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGraveAccent.item["o"] := "{u+00f2}"  ; (ò) o with grave
dkGraveAccent.item["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGraveAccent.item["u"] := "{u+00f9}"  ; (ù) u with grave
dkGraveAccent.item["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGraveAccent.item["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGraveAccent.item["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGraveAccent.item["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGraveAccent.item["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGraveAccent.item[" "] := "``"        ;     grave accent


; Dead Key :  Tilde

dkTilde := ComObjCreate("Scripting.Dictionary")
dkTilde.item["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde.item["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde.item["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde.item["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde.item["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde.item["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde.item["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde.item["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde.item["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde.item["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde.item["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde.item["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde.item["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde.item["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde.item["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde.item["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
dkTilde.item[" "] := "~"         ;     tilde


; Configuration :  Convert US QWERTY to Belgian AZERTY

q::a   ; assign 'A' to 'Q'
w::z   ; assign 'Z' to 'W'
a::q   ; assign 'Q' to 'A'
z::w   ; assign 'W' to 'Z'
`;::m  ; assign 'M' to ';/:'

$1::
  if GetKeyState("CapsLock", "T")
    Send 1   ; digit 1
  else
    Send &   ; ampersand
  return
$+1::
  if GetKeyState("CapsLock", "T")
    Send &   ; ampersand
  else
    Send 1   ; digit 1
  return

>!1::Send |  ; vertical line

$2::
  if GetKeyState("CapsLock", "T")
    Send 2         ; digit 2
  else
    Send {u+00e9}  ; (é) e with acute
  return
$+2::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send 2         ; digit 2
  return

>!2::Send @        ; at sign

$3::
  if GetKeyState("CapsLock", "T")
    Send 3     ; digit 3
  else
    Send `"    ; quotation mark
  return
$+3::
  if GetKeyState("CapsLock", "T")
    Send `"    ; quotation mark
  else
    Send 3     ; digit 3
  return

>!3::Send {#}  ; number sign

$4::
  if GetKeyState("CapsLock", "T")
    Send 4     ; digit 4
  else
    Send '     ; apostrophe
  return
$+4::
  if GetKeyState("CapsLock", "T")
    Send '     ; apostrophe
  else
    Send 4     ; digit 4
  return

>!4::Send {{}  ; left curly bracket

$5::
  if GetKeyState("CapsLock", "T")
    Send 5          ; digit 5
  else
    Send (          ; left parenthesis
  return
$+5::
  if GetKeyState("CapsLock", "T")
    Send (          ; left parenthesis
  else
    Send 5          ; digit 5
  return

>!5::Send {u+20ac}  ; (€) euro sign

$6::
  if GetKeyState("CapsLock", "T")
    Send 6         ; digit 6
  else
    Send {u+00a7}  ; (§) section sign
  return
$+6::
  if GetKeyState("CapsLock", "T")
    Send {u+00a7}  ; (§) section sign
  else
    Send 6         ; digit 6
  return

>!6::Send {^}      ; circumflex accent

$7::
  if GetKeyState("CapsLock", "T")
    Send 7         ; digit 7
  else
    Send {u+00e8}  ; (è) e with grave
  return
$+7::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send 7         ; digit 7
  return

$8::
  if GetKeyState("CapsLock", "T")
    Send 8    ; digit 8
  else
    Send {!}  ; exclamation mark
  return
$+8::
  if GetKeyState("CapsLock", "T")
    Send {!}  ; exclamation mark
  else
    Send 8    ; digit 8
  return

$9::
  if GetKeyState("CapsLock", "T")
    Send 9         ; digit 9
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
$+9::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send 9         ; digit 9
  return

>!9::Send {{}      ; left curly bracket

$0::
  if GetKeyState("CapsLock", "T")
    Send 0         ; digit 0
  else
    Send {u+00e0}  ; (à) a with grave
  return
$+0::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send 0         ; digit 0
  return

>!0::Send {}}      ; right curly bracket

$-::Send )         ; right parenthesis
$_::Send {u+00b0}  ; (°) degree sign

$=::Send -          ; hyphen-minus
$+::Send _          ; underscore
>!=::Send {u+00c7}  ; (Ç) C with cedilla

$m::Send `,  ; comma
$+m::Send ?  ; question mark
>!m::Send \  ; reverse solidus (backslash)

$,::Send `;  ; semicolon
$<::Send .   ; full stop (period)
>!,::Send <  ; less-than sign

$.::Send :   ; colon
$>::Send /   ; solidus (slash)
>!.::Send >  ; greater-than sign

$/::Send {=}  ; equals sign
$?::Send {+}  ; plus sign

>!/::
  Send {blind}{vkE8}  ; suppresses circles around mouse pointer
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkTilde.item[key]
  key := ""  ; avoids leaking content via debug properties
  Send {blind}{vkE8}  ; suppresses 'Right Alt + Shift' hotkey (for second character with 'Right Alt + Shift')
  return

>!q::
  if GetKeyState("CapsLock", "T")
    Send {u+00c6}  ; (Æ) letter AE
  else
    Send {u+00e6}  ; (æ) letter ae
  return
>!+q::
  if GetKeyState("CapsLock", "T")
    Send {u+00e6}  ; (æ) letter ae
  else
    Send {u+00c6}  ; (Æ) letter AE
  Send {blind}{vkE8}
  return

>!w::
  if GetKeyState("CapsLock", "T")
    Send {u+00c5}  ; (Å) A with ring above
  else
    Send {u+00e5}  ; (å) a with ring above
  return
>!+w::
  if GetKeyState("CapsLock", "T")
    Send {u+00e5}  ; (å) a with ring above
  else
    Send {u+00c5}  ; (Å) A with ring above
  Send {blind}{vkE8}
  return

>!c::
  if GetKeyState("CapsLock", "T")
    Send {u+00c7}  ; (Ç) C with cedilla
  else
    Send {u+00e7}  ; (ç) c with cedilla
  return
>!+c::
  if GetKeyState("CapsLock", "T")
    Send {u+00e7}  ; (ç) c with cedilla
  else
    Send {u+00c7}  ; (Ç) C with cedilla
  Send {blind}{vkE8}
  return

>!d::
  if GetKeyState("CapsLock", "T")
    Send {u+00d0}  ; (Ð) capital letter eth
  else
    Send {u+00f0}  ; (ð) small letter eth
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {u+00f0}  ; (ð) small letter eth
  else
    Send {u+00d0}  ; (Ð) capital letter eth
  Send {blind}{vkE8}
  return

>!n::
  if GetKeyState("CapsLock", "T")
    Send {u+00d1}  ; (Ñ) N with tilde
  else
    Send {u+00f1}  ; (ñ) n with tilde
  return
>!+n::
  if GetKeyState("CapsLock", "T")
    Send {u+00f1}  ; (ñ) n with tilde
  else
    Send {u+00d1}  ; (Ñ) N with tilde
  Send {blind}{vkE8}
  return

>!k::
  if GetKeyState("CapsLock", "T")
    Send {u+0152}  ; (Œ) ligature OE
  else
    Send {u+0153}  ; (œ) ligature oe
  return
>!+k::
  if GetKeyState("CapsLock", "T")
    Send {u+0153}  ; (œ) ligature oe
  else
    Send {u+0152}  ; (Œ) ligature OE
  Send {blind}{vkE8}
  return

>!l::
  if GetKeyState("CapsLock", "T")
    Send {u+00d8}  ; (Ø) O with stroke
  else
    Send {u+00f8}  ; (ø) o with stroke
  return
>!+l::
  if GetKeyState("CapsLock", "T")
    Send {u+00f8}  ; (ø) o with stroke
  else
    Send {u+00d8}  ; (Ø) O with stroke
  Send {blind}{vkE8}
  return

>!s::
  if GetKeyState("CapsLock", "T")
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  return
>!+s::
  if GetKeyState("CapsLock", "T")
    Send {u+00df}  ; (ß) small sharp s (Eszett)
  else
    Send {u+1e9e}  ; (ẞ) capital sharp S (capital Eszett)
  Send {blind}{vkE8}
  return

>!t::
  if GetKeyState("CapsLock", "T")
    Send {u+00de}  ; (Þ) capital letter thorn
  else
    Send {u+00fe}  ; (þ) small letter thorn
  return
>!+t::
  if GetKeyState("CapsLock", "T")
    Send {u+00fe}  ; (þ) small letter thorn
  else
    Send {u+00de}  ; (Þ) capital letter thorn
  Send {blind}{vkE8}
  return

>!e::Send {u+20ac}  ; (€) euro sign

$'::Send {u+00f9}  ; (ù) u with grave
$"::Send `%        ; percent sign

>!'::
  Send {blind}{vkE8}  ; suppresses circles around mouse pointer
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkAcuteAccent.item[key]
  key := ""  ; avoids leaking content via debug properties
  Send {blind}{vkE8}  ; suppresses 'Right Alt + Shift' hotkey (for second character with 'Right Alt + Shift')
  return

$[::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkCircumflex.item[key]
  key := ""
  Send {blind}{vkE8}
  return
${::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkDiaeresis.item[key]
  key := ""
  Send {blind}{vkE8}
  return

>![::Send [  ; left square bracket

$]::Send $   ; dollar sign
$}::Send *   ; asterisk

>!]::Send ]  ; right square bracket

$\::Send {u+00b5}  ; (µ) micro sign
$|::Send {u+00a3}  ; (£) pound sign

>!\::
  Send {blind}{vkE8}
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkGraveAccent.item[key]
  key := ""
  Send {blind}{vkE8}
  return

$`::Send {u+00b2}  ; (²) superscript 2
$~::Send {u+00b3}  ; (³) superscript 3

sc056::Send <    ; less-than sign
+sc056::Send >   ; greater-than sign
>!sc056::Send \  ; reverse solidus (backslash)

>!space::Send {u+00a0}  ; non-breaking space
>!+space::
  Send {u+00a0}         ; non-breaking space
  Send {blind}{vkE8}  ; suppresses RAlt+Shift hotkey
  return
