#requires AutoHotkey v1.1

; Belgian AZERTY (Shift Lock for letters and digits) (for AutoHotkey v1.1).ahk - 2022-02-01

; Website :  https://pieter-degroote.github.io/UltimateKEYS/

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS-testing

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout (on Windows) :  US QWERTY



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Event  ; allows chaining of customized key combinations


; Dead Key :  Circumflex Accent

dkCircumflex := ComObjCreate("Scripting.Dictionary")
dkCircumflex.item["a"] := "{U+00E2}"  ; (â) a with circumflex
dkCircumflex.item["A"] := "{U+00C2}"  ; (Â) A with circumflex
dkCircumflex.item["c"] := "{U+0109}"  ; (ĉ) c with circumflex
dkCircumflex.item["C"] := "{U+0108}"  ; (Ĉ) C with circumflex
dkCircumflex.item["e"] := "{U+00EA}"  ; (ê) e with circumflex
dkCircumflex.item["E"] := "{U+00CA}"  ; (Ê) E with circumflex
dkCircumflex.item["g"] := "{U+011D}"  ; (ĝ) g with circumflex
dkCircumflex.item["G"] := "{U+011C}"  ; (Ĝ) G with circumflex
dkCircumflex.item["h"] := "{U+0125}"  ; (ĥ) h with circumflex
dkCircumflex.item["H"] := "{U+0124}"  ; (Ĥ) H with circumflex
dkCircumflex.item["i"] := "{U+00EE}"  ; (î) i with circumflex
dkCircumflex.item["I"] := "{U+00CE}"  ; (Î) I with circumflex
dkCircumflex.item["j"] := "{U+0135}"  ; (ĵ) j with circumflex
dkCircumflex.item["J"] := "{U+0134}"  ; (Ĵ) J with circumflex
dkCircumflex.item["o"] := "{U+00F4}"  ; (ô) o with circumflex
dkCircumflex.item["O"] := "{U+00D4}"  ; (Ô) O with circumflex
dkCircumflex.item["s"] := "{U+015D}"  ; (ŝ) s with circumflex
dkCircumflex.item["S"] := "{U+015C}"  ; (Ŝ) S with circumflex
dkCircumflex.item["u"] := "{U+00FB}"  ; (û) u with circumflex
dkCircumflex.item["U"] := "{U+00DB}"  ; (Û) U with circumflex
dkCircumflex.item["w"] := "{U+0175}"  ; (ŵ) w with circumflex
dkCircumflex.item["W"] := "{U+0174}"  ; (Ŵ) W with circumflex
dkCircumflex.item["y"] := "{U+0177}"  ; (ŷ) y with circumflex
dkCircumflex.item["Y"] := "{U+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex.item["z"] := "{U+1E91}"  ; (ẑ) z with circumflex
dkCircumflex.item["Z"] := "{U+1E90}"  ; (Ẑ) Z with circumflex
dkCircumflex.item[" "] := "{^}"       ;     circumflex accent


; Dead Key :  Acute Accent

dkAcuteAccent := ComObjCreate("Scripting.Dictionary")
dkAcuteAccent.item["a"] := "{U+00E1}"  ; (á) a with acute
dkAcuteAccent.item["A"] := "{U+00C1}"  ; (Á) A with acute
dkAcuteAccent.item["c"] := "{U+0107}"  ; (ć) c with acute
dkAcuteAccent.item["C"] := "{U+0106}"  ; (Ć) C with acute
dkAcuteAccent.item["e"] := "{U+00E9}"  ; (é) e with acute
dkAcuteAccent.item["E"] := "{U+00C9}"  ; (É) E with acute
dkAcuteAccent.item["f"] := "{U+0192}"  ; (ƒ) f with hook
dkAcuteAccent.item["F"] := "{U+0191}"  ; (Ƒ) F with hook
dkAcuteAccent.item["g"] := "{U+01F5}"  ; (ǵ) g with acute
dkAcuteAccent.item["G"] := "{U+01F4}"  ; (Ǵ) G with acute
dkAcuteAccent.item["i"] := "{U+00ED}"  ; (í) i with acute
dkAcuteAccent.item["I"] := "{U+00CD}"  ; (Í) I with acute
dkAcuteAccent.item["j"] := "{U+0133}"  ; (ĳ) ligature ij
dkAcuteAccent.item["J"] := "{U+0132}"  ; (Ĳ) ligature IJ
dkAcuteAccent.item["k"] := "{U+1E31}"  ; (ḱ) k with acute
dkAcuteAccent.item["K"] := "{U+1E30}"  ; (Ḱ) K with acute
dkAcuteAccent.item["l"] := "{U+013A}"  ; (ĺ) l with acute
dkAcuteAccent.item["L"] := "{U+0139}"  ; (Ĺ) L with acute
dkAcuteAccent.item["m"] := "{U+1E3F}"  ; (ḿ) m with acute
dkAcuteAccent.item["M"] := "{U+1E3E}"  ; (Ḿ) M with acute
dkAcuteAccent.item["n"] := "{U+0144}"  ; (ń) n with acute
dkAcuteAccent.item["N"] := "{U+0143}"  ; (Ń) N with acute
dkAcuteAccent.item["o"] := "{U+00F3}"  ; (ó) o with acute
dkAcuteAccent.item["O"] := "{U+00D3}"  ; (Ó) O with acute
dkAcuteAccent.item["p"] := "{U+1E55}"  ; (ṕ) p with acute
dkAcuteAccent.item["P"] := "{U+1E54}"  ; (Ṕ) P with acute
dkAcuteAccent.item["r"] := "{U+0155}"  ; (ŕ) r with acute
dkAcuteAccent.item["R"] := "{U+0154}"  ; (Ŕ) R with acute
dkAcuteAccent.item["s"] := "{U+015B}"  ; (ś) s with acute
dkAcuteAccent.item["S"] := "{U+015A}"  ; (Ś) S with acute
dkAcuteAccent.item["u"] := "{U+00FA}"  ; (ú) u with acute
dkAcuteAccent.item["U"] := "{U+00DA}"  ; (Ú) U with acute
dkAcuteAccent.item["w"] := "{U+1E83}"  ; (ẃ) w with acute
dkAcuteAccent.item["W"] := "{U+1E82}"  ; (Ẃ) W with acute
dkAcuteAccent.item["y"] := "{U+00FD}"  ; (ý) y with acute
dkAcuteAccent.item["Y"] := "{U+00DD}"  ; (Ý) Y with acute
dkAcuteAccent.item["z"] := "{U+017A}"  ; (ź) z with acute
dkAcuteAccent.item["Z"] := "{U+0179}"  ; (Ź) Z with acute
dkAcuteAccent.item[" "] := "{U+00B4}"  ; (´) acute accent


; Dead Key :  Diaeresis

dkDiaeresis := ComObjCreate("Scripting.Dictionary")
dkDiaeresis.item["a"] := "{U+00E4}"  ; (ä) a with diaeresis
dkDiaeresis.item["A"] := "{U+00C4}"  ; (Ä) A with diaeresis
dkDiaeresis.item["e"] := "{U+00EB}"  ; (ë) e with diaeresis
dkDiaeresis.item["E"] := "{U+00CB}"  ; (Ë) E with diaeresis
dkDiaeresis.item["h"] := "{U+1E27}"  ; (ḧ) h with diaeresis
dkDiaeresis.item["H"] := "{U+1E26}"  ; (Ḧ) H with diaeresis
dkDiaeresis.item["i"] := "{U+00EF}"  ; (ï) i with diaeresis
dkDiaeresis.item["I"] := "{U+00CF}"  ; (Ï) I with diaeresis
dkDiaeresis.item["o"] := "{U+00F6}"  ; (ö) o with diaeresis
dkDiaeresis.item["O"] := "{U+00D6}"  ; (Ö) O with diaeresis
dkDiaeresis.item["t"] := "{U+1E97}"  ; (ẗ) t with diaeresis
dkDiaeresis.item["u"] := "{U+00FC}"  ; (ü) u with diaeresis
dkDiaeresis.item["U"] := "{U+00DC}"  ; (Ü) U with diaeresis
dkDiaeresis.item["w"] := "{U+1E85}"  ; (ẅ) w with diaeresis
dkDiaeresis.item["W"] := "{U+1E84}"  ; (Ẅ) W with diaeresis
dkDiaeresis.item["x"] := "{U+1E8D}"  ; (ẍ) x with diaeresis
dkDiaeresis.item["X"] := "{U+1E8C}"  ; (Ẍ) X with diaeresis
dkDiaeresis.item["y"] := "{U+00FF}"  ; (ÿ) y with diaeresis
dkDiaeresis.item["Y"] := "{U+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis.item[" "] := "{U+00A8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

dkGraveAccent := ComObjCreate("Scripting.Dictionary")
dkGraveAccent.item["a"] := "{U+00E0}"  ; (à) a with grave
dkGraveAccent.item["A"] := "{U+00C0}"  ; (À) A with grave
dkGraveAccent.item["e"] := "{U+00E8}"  ; (è) e with grave
dkGraveAccent.item["E"] := "{U+00C8}"  ; (È) E with grave
dkGraveAccent.item["i"] := "{U+00EC}"  ; (ì) i with grave
dkGraveAccent.item["I"] := "{U+00CC}"  ; (Ì) I with grave
dkGraveAccent.item["n"] := "{U+01F9}"  ; (ǹ) n with grave
dkGraveAccent.item["N"] := "{U+01F8}"  ; (Ǹ) N with grave
dkGraveAccent.item["o"] := "{U+00F2}"  ; (ò) o with grave
dkGraveAccent.item["O"] := "{U+00D2}"  ; (Ò) O with grave
dkGraveAccent.item["u"] := "{U+00F9}"  ; (ù) u with grave
dkGraveAccent.item["U"] := "{U+00D9}"  ; (Ù) U with grave
dkGraveAccent.item["w"] := "{U+1E81}"  ; (ẁ) w with grave
dkGraveAccent.item["W"] := "{U+1E80}"  ; (Ẁ) W with grave
dkGraveAccent.item["y"] := "{U+1EF3}"  ; (ỳ) y with grave
dkGraveAccent.item["Y"] := "{U+1EF2}"  ; (Ỳ) Y with grave
dkGraveAccent.item[" "] := "``"        ;     grave accent


; Dead Key :  Tilde

dkTilde := ComObjCreate("Scripting.Dictionary")
dkTilde.item["a"] := "{U+00E3}"  ; (ã) a with tilde
dkTilde.item["A"] := "{U+00C3}"  ; (Ã) A with tilde
dkTilde.item["e"] := "{U+1EBD}"  ; (ẽ) e with tilde
dkTilde.item["E"] := "{U+1EBC}"  ; (Ẽ) E with tilde
dkTilde.item["i"] := "{U+0129}"  ; (ĩ) i with tilde
dkTilde.item["I"] := "{U+0128}"  ; (Ĩ) I with tilde
dkTilde.item["l"] := "{U+026B}"  ; (ɫ) l with middle tilde
dkTilde.item["L"] := "{U+2C62}"  ; (Ɫ) L with middle tilde
dkTilde.item["n"] := "{U+00F1}"  ; (ñ) n with tilde
dkTilde.item["N"] := "{U+00D1}"  ; (Ñ) N with tilde
dkTilde.item["o"] := "{U+00F5}"  ; (õ) o with tilde
dkTilde.item["O"] := "{U+00D5}"  ; (Õ) O with tilde
dkTilde.item["u"] := "{U+0169}"  ; (ũ) u with tilde
dkTilde.item["U"] := "{U+0168}"  ; (Ũ) U with tilde
dkTilde.item["v"] := "{U+1E7D}"  ; (ṽ) v with tilde
dkTilde.item["V"] := "{U+1E7C}"  ; (Ṽ) V with tilde
dkTilde.item["y"] := "{U+1EF9}"  ; (ỹ) y with tilde
dkTilde.item["Y"] := "{U+1EF8}"  ; (Ỹ) Y with tilde
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
    Send {U+00E9}  ; (é) e with acute
  return
$+2::
  if GetKeyState("CapsLock", "T")
    Send {U+00E9}  ; (é) e with acute
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

>!5::Send {U+20AC}  ; (€) euro sign

$6::
  if GetKeyState("CapsLock", "T")
    Send 6         ; digit 6
  else
    Send {U+00A7}  ; (§) section sign
  return
$+6::
  if GetKeyState("CapsLock", "T")
    Send {U+00A7}  ; (§) section sign
  else
    Send 6         ; digit 6
  return

>!6::Send {^}      ; circumflex accent

$7::
  if GetKeyState("CapsLock", "T")
    Send 7         ; digit 7
  else
    Send {U+00E8}  ; (è) e with grave
  return
$+7::
  if GetKeyState("CapsLock", "T")
    Send {U+00E8}  ; (è) e with grave
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
    Send {U+00E7}  ; (ç) c with cedilla
  return
$+9::
  if GetKeyState("CapsLock", "T")
    Send {U+00E7}  ; (ç) c with cedilla
  else
    Send 9         ; digit 9
  return

>!9::Send {{}      ; left curly bracket

$0::
  if GetKeyState("CapsLock", "T")
    Send 0         ; digit 0
  else
    Send {U+00E0}  ; (à) a with grave
  return
$+0::
  if GetKeyState("CapsLock", "T")
    Send {U+00E0}  ; (à) a with grave
  else
    Send 0         ; digit 0
  return

>!0::Send {}}      ; right curly bracket

$-::Send )         ; right parenthesis
$_::Send {U+00B0}  ; (°) degree sign

$=::Send -          ; hyphen-minus
$+::Send _          ; underscore
>!=::Send {U+00C7}  ; (Ç) C with cedilla

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
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkTilde.item[key]
  key := ""  ; avoids leaking content via debug properties
  return

>!q::
  if GetKeyState("CapsLock", "T")
    Send {U+00C6}  ; (Æ) letter AE
  else
    Send {U+00E6}  ; (æ) letter ae
  return
>!+q::
  if GetKeyState("CapsLock", "T")
    Send {U+00E6}  ; (æ) letter ae
  else
    Send {U+00C6}  ; (Æ) letter AE
  return

>!w::
  if GetKeyState("CapsLock", "T")
    Send {U+00C5}  ; (Å) A with ring above
  else
    Send {U+00E5}  ; (å) a with ring above
  return
>!+w::
  if GetKeyState("CapsLock", "T")
    Send {U+00E5}  ; (å) a with ring above
  else
    Send {U+00C5}  ; (Å) A with ring above
  return

>!c::
  if GetKeyState("CapsLock", "T")
    Send {U+00C7}  ; (Ç) C with cedilla
  else
    Send {U+00E7}  ; (ç) c with cedilla
  return
>!+c::
  if GetKeyState("CapsLock", "T")
    Send {U+00E7}  ; (ç) c with cedilla
  else
    Send {U+00C7}  ; (Ç) C with cedilla
  return

>!d::
  if GetKeyState("CapsLock", "T")
    Send {U+00D0}  ; (Ð) capital letter eth
  else
    Send {U+00F0}  ; (ð) small letter eth
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {U+00F0}  ; (ð) small letter eth
  else
    Send {U+00D0}  ; (Ð) capital letter eth
  return

>!n::
  if GetKeyState("CapsLock", "T")
    Send {U+00D1}  ; (Ñ) N with tilde
  else
    Send {U+00F1}  ; (ñ) n with tilde
  return
>!+n::
  if GetKeyState("CapsLock", "T")
    Send {U+00F1}  ; (ñ) n with tilde
  else
    Send {U+00D1}  ; (Ñ) N with tilde
  return

>!k::
  if GetKeyState("CapsLock", "T")
    Send {U+0152}  ; (Œ) ligature OE
  else
    Send {U+0153}  ; (œ) ligature oe
  return
>!+k::
  if GetKeyState("CapsLock", "T")
    Send {U+0153}  ; (œ) ligature oe
  else
    Send {U+0152}  ; (Œ) ligature OE
  return

>!l::
  if GetKeyState("CapsLock", "T")
    Send {U+00D8}  ; (Ø) O with stroke
  else
    Send {U+00F8}  ; (ø) o with stroke
  return
>!+l::
  if GetKeyState("CapsLock", "T")
    Send {U+00F8}  ; (ø) o with stroke
  else
    Send {U+00D8}  ; (Ø) O with stroke
  return

>!s::
  if GetKeyState("CapsLock", "T")
    Send {U+1E9E}  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send {U+00DF}  ; (ß) small sharp s (Eszett)
  return
>!+s::
  if GetKeyState("CapsLock", "T")
    Send {U+00DF}  ; (ß) small sharp s (Eszett)
  else
    Send {U+1E9E}  ; (ẞ) capital sharp S (capital Eszett)
  return

>!t::
  if GetKeyState("CapsLock", "T")
    Send {U+00DE}  ; (Þ) capital letter thorn
  else
    Send {U+00FE}  ; (þ) small letter thorn
  return
>!+t::
  if GetKeyState("CapsLock", "T")
    Send {U+00FE}  ; (þ) small letter thorn
  else
    Send {U+00DE}  ; (Þ) capital letter thorn
  return

>!e::Send {U+20AC}  ; (€) euro sign

$'::Send {U+00F9}  ; (ù) u with grave
$"::Send `%        ; percent sign

>!'::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkAcuteAccent.item[key]
  key := ""  ; avoids leaking content via debug properties
  return

$[::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkCircumflex.item[key]
  key := ""
  return
${::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkDiaeresis.item[key]
  key := ""
  return

>![::Send [  ; left square bracket

$]::Send $   ; dollar sign
$}::Send *   ; asterisk

>!]::Send ]  ; right square bracket

$\::Send {U+00B5}  ; (µ) micro sign
$|::Send {U+00A3}  ; (£) pound sign

>!\::
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkGraveAccent.item[key]
  key := ""
  return

$`::Send {U+00B2}  ; (²) superscript 2
$~::Send {U+00B3}  ; (³) superscript 3

sc056::Send <    ; less-than sign
+sc056::Send >   ; greater-than sign
>!sc056::Send \  ; reverse solidus (backslash)

>!space::Send {U+00A0}   ; non-breaking space (NBSP)
>!+space::Send {U+00A0}  ; non-breaking space (NBSP)
