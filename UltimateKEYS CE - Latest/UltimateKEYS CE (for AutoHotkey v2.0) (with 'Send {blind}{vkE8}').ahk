; UltimateKEYS CE (for AutoHotkey v2.0) (with 'Send {blind}{vkE8}').ahk

; Website :  www.ultimatekeys.info (pieter-degroote.github.io/UltimateKEYS/)

; License :  GNU General Public License Version 3

; GitHub :   github.com/pieter-degroote/UltimateKEYS-testing


; Requirements :

; Keyboard layout (on Windows) :  US QWERTY

; AutoHotkey v2.0 (www.autohotkey.com)



ListLines False   ; omits recently executed lines from history (for privacy and security)
KeyHistory 0      ; disables the key history (for privacy and security)

SendMode "Input"  ; optimizes for faster and more reliable input (default)


; Configuration :  'Right Alt' and 'Right Alt + Shift' on US QWERTY

>!a:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  else
    Send "{u+00e4}"  ; (ä) a with diaeresis
}
>!+a:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e4}"  ; (ä) a with diaeresis
  else
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  Send "{blind}{vkE8}"  ; suppresses 'Right Alt + Shift' hotkey
}

>!q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
>!+q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
  Send "{blind}{vkE8}"  ; suppresses 'Right Alt + Shift' hotkey
}

>!w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c5}"  ; (Å) A with ring above
  else
    Send "{u+00e5}"  ; (å) a with ring above
}
>!+w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e5}"  ; (å) a with ring above
  else
    Send "{u+00c5}"  ; (Å) A with ring above
  Send "{blind}{vkE8}"
}

>!z:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c0}"  ; (À) A with grave
  else
    Send "{u+00e0}"  ; (à) a with grave
}
>!+z:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e0}"  ; (à) a with grave
  else
    Send "{u+00c0}"  ; (À) A with grave
  Send "{blind}{vkE8}"
}

>!x:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c1}"  ; (Á) A with acute
  else
    Send "{u+00e1}"  ; (á) a with acute
}
>!+x:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e1}"  ; (á) a with acute
  else
    Send "{u+00c1}"  ; (Á) A with acute
  Send "{blind}{vkE8}"
}

>!d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c2}"  ; (Â) A with circumflex
  else
    Send "{u+00e2}"  ; (â) a with circumflex
}
>!+d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e2}"  ; (â) a with circumflex
  else
    Send "{u+00c2}"  ; (Â) A with circumflex
  Send "{blind}{vkE8}"
}

>!c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c7}"  ; (Ç) C with cedilla
  else
    Send "{u+00e7}"  ; (ç) c with cedilla
}
>!+c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "{u+00c7}"  ; (Ç) C with cedilla
  Send "{blind}{vkE8}"
}

>!e:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  else
    Send "{u+00eb}"  ; (ë) e with diaeresis
}
>!+e:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00eb}"  ; (ë) e with diaeresis
  else
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  Send "{blind}{vkE8}"
}

>!f:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c8}"  ; (È) E with grave
  else
    Send "{u+00e8}"  ; (è) e with grave
}
>!+f:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e8}"  ; (è) e with grave
  else
    Send "{u+00c8}"  ; (È) E with grave
  Send "{blind}{vkE8}"
}

>!g:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c9}"  ; (É) E with acute
  else
    Send "{u+00e9}"  ; (é) e with acute
}
>!+g:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
  else
    Send "{u+00c9}"  ; (É) E with acute
  Send "{blind}{vkE8}"
}

>!r:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ca}"  ; (Ê) E with circumflex
  else
    Send "{u+00ea}"  ; (ê) e with circumflex
}
>!+r:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ea}"  ; (ê) e with circumflex
  else
    Send "{u+00ca}"  ; (Ê) E with circumflex
  Send "{blind}{vkE8}"
}

>!i:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  else
    Send "{u+00ef}"  ; (ï) i with diaeresis
}
>!+i:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ef}"  ; (ï) i with diaeresis
  else
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  Send "{blind}{vkE8}"
}

>!v:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cc}"  ; (Ì) I with grave
  else
    Send "{u+00ec}"  ; (ì) i with grave
}
>!+v:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ec}"  ; (ì) i with grave
  else
    Send "{u+00cc}"  ; (Ì) I with grave
  Send "{blind}{vkE8}"
}

>!b:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cd}"  ; (Í) I with acute
  else
    Send "{u+00ed}"  ; (í) i with acute
}
>!+b:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ed}"  ; (í) i with acute
  else
    Send "{u+00cd}"  ; (Í) I with acute
  Send "{blind}{vkE8}"
}

>!t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ce}"  ; (Î) I with circumflex
  else
    Send "{u+00ee}"  ; (î) i with circumflex
}
>!+t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ee}"  ; (î) i with circumflex
  else
    Send "{u+00ce}"  ; (Î) I with circumflex
  Send "{blind}{vkE8}"
}

>!n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d1}"  ; (Ñ) N with tilde
  else
    Send "{u+00f1}"  ; (ñ) n with tilde
}
>!+n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f1}"  ; (ñ) n with tilde
  else
    Send "{u+00d1}"  ; (Ñ) N with tilde
  Send "{blind}{vkE8}"
}

>!o:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  else
    Send "{u+00f6}"  ; (ö) o with diaeresis
}
>!+o:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f6}"  ; (ö) o with diaeresis
  else
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  Send "{blind}{vkE8}"
}

>!k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0152}"  ; (Œ) ligature OE
  else
    Send "{u+0153}"  ; (œ) ligature oe
}
>!+k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0153}"  ; (œ) ligature oe
  else
    Send "{u+0152}"  ; (Œ) ligature OE
  Send "{blind}{vkE8}"
}

>!l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d8}"  ; (Ø) O with stroke
  else
    Send "{u+00f8}"  ; (ø) o with stroke
}
>!+l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f8}"  ; (ø) o with stroke
  else
    Send "{u+00d8}"  ; (Ø) O with stroke
  Send "{blind}{vkE8}"
}

>!,:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d2}"  ; (Ò) O with grave
  else
    Send "{u+00f2}"  ; (ò) o with grave
}
>!<:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f2}"  ; (ò) o with grave
  else
    Send "{u+00d2}"  ; (Ò) O with grave
  Send "{blind}{vkE8}"
}

>!.:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d3}"  ; (Ó) O with acute
  else
    Send "{u+00f3}"  ; (ó) o with acute
}
>!>:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f3}"  ; (ó) o with acute
  else
    Send "{u+00d3}"  ; (Ó) O with acute
  Send "{blind}{vkE8}"
}

>!p:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d4}"  ; (Ô) O with circumflex
  else
    Send "{u+00f4}"  ; (ô) o with circumflex
}
>!+p:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f4}"  ; (ô) o with circumflex
  else
    Send "{u+00d4}"  ; (Ô) O with circumflex
  Send "{blind}{vkE8}"
}

>!s:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  else
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
}
>!+s:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00df}"  ; (ß) small sharp s (Eszett)
  else
    Send "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
  Send "{blind}{vkE8}"
}

>!u:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  else
    Send "{u+00fc}"  ; (ü) u with diaeresis
}
>!+u:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fc}"  ; (ü) u with diaeresis
  else
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  Send "{blind}{vkE8}"
}

>!h:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d9}"  ; (Ù) U with grave
  else
    Send "{u+00f9}"  ; (ù) u with grave
}
>!+h:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f9}"  ; (ù) u with grave
  else
    Send "{u+00d9}"  ; (Ù) U with grave
  Send "{blind}{vkE8}"
}

>!j:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00da}"  ; (Ú) U with acute
  else
    Send "{u+00fa}"  ; (ú) u with acute
}
>!+j:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fa}"  ; (ú) u with acute
  else
    Send "{u+00da}"  ; (Ú) U with acute
  Send "{blind}{vkE8}"
}

>!y:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00db}"  ; (Û) U with circumflex
  else
    Send "{u+00fb}"  ; (û) u with circumflex
}
>!+y:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fb}"  ; (û) u with circumflex
  else
    Send "{u+00db}"  ; (Û) U with circumflex
  Send "{blind}{vkE8}"
}

>!-:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c3}"  ; (Ã) A with tilde
  else
    Send "{u+00e3}"  ; (ã) a with tilde
}
>!_:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e3}"  ; (ã) a with tilde
  else
    Send "{u+00c3}"  ; (Ã) A with tilde
  Send "{blind}{vkE8}"
}

>!=:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d5}"  ; (Õ) O with tilde
  else
    Send "{u+00f5}"  ; (õ) o with tilde
}
>!+=:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f5}"  ; (õ) o with tilde
  else
    Send "{u+00d5}"  ; (Õ) O with tilde
  Send "{blind}{vkE8}"
}

>!m::Send "{u+00b5}"  ; (µ) micro sign
>!+m:: {
  Send "{u+221a}"     ; (√) square root
  Send "{blind}{vkE8}"  ; suppresses 'Right Alt + Shift' hotkey
}

>!1::Send "{u+00a1}"  ; (¡) inverted exclamation mark
>!+1:: {
  Send "{u+00b9}"     ; (¹) superscript 1
  Send "{blind}{vkE8}"  ; suppresses 'Right Alt + Shift' hotkey
}

>!2::Send "{u+00a9}"  ; (©) copyright sign
>!+2:: {
  Send "{u+00b2}"     ; (²) superscript 2
  Send "{blind}{vkE8}"
}

>!3::Send "{u+00a7}"  ; (§) section sign
>!+3:: {
  Send "{u+00b3}"     ; (³) superscript 3
  Send "{blind}{vkE8}"
}

>!4::Send "{u+00a3}"  ; (£) pound sign
>!+4:: {
  Send "{u+00a5}"     ; (¥) yen sign
  Send "{blind}{vkE8}"
}

>!5::Send "{u+20ac}"  ; (€) euro sign
>!+5:: {
  Send "{u+00a2}"     ; (¢) cent sign (dollar)
  Send "{blind}{vkE8}"
}

>!6::Send "{u+2264}"  ; (≤) less-than or equal to
>!+6:: {
  Send "{u+00b1}"     ; (±) plus-minus sign
  Send "{blind}{vkE8}"
}

>!7::Send "{u+2265}"  ; (≥) greater-than or equal to
>!+7:: {
  Send "{u+2030}"     ; (‰) per mille sign
  Send "{blind}{vkE8}"
}

>!8::Send "{u+201e}"  ; („) double low-9 quotation mark
>!+8:: {
  Send "{u+201a}"     ; (‚) single low-9 quotation mark
  Send "{blind}{vkE8}"
}

>!9::Send "{u+201c}"  ; (“) left double quotation mark
>!+9:: {
  Send "{u+2018}"     ; (‘) left single quotation mark
  Send "{blind}{vkE8}"
}

>!0::Send "{u+201d}"  ; (”) right double quotation mark
>!+0:: {
  Send "{u+2019}"     ; (’) right single quotation mark
  Send "{blind}{vkE8}"
}

>!`::Send "{u+2260}"  ; (≠) not equal to
>!~:: {
  Send "{u+2248}"     ; (≈) almost equal to
  Send "{blind}{vkE8}"
}

>![::Send "{u+00ab}"  ; («) left-pointing double angle quotation mark
>!{:: {
  Send "{u+2039}"     ; (‹) left-pointing single angle quotation mark
  Send "{blind}{vkE8}"
}

>!]::Send "{u+00bb}"  ; (») right-pointing double angle quotation mark
>!}:: {
  Send "{u+203a}"     ; (›) right-pointing single angle quotation mark
  Send "{blind}{vkE8}"
}

>!;::Send "{u+00b0}"  ; (°) degree sign
>!+;:: {
  Send "{u+00b7}"     ; (·) middle dot
  Send "{blind}{vkE8}"
}

>!'::Send "{u+2020}"  ; (†) dagger
>!":: {
  Send "{u+2021}"     ; (‡) double dagger
  Send "{blind}{vkE8}"
}

>!\::Send "{u+00d7}"  ; (×) multiplication sign
>!|:: {
  Send "{u+00f7}"     ; (÷) division sig
  Send "{blind}{vkE8}"
}

>!/::Send "{u+00bf}"  ; (¿) inverted question mark
>!?:: {
  Send "{u+2026}"     ; (…) horizontal ellipsis
  Send "{blind}{vkE8}"
}

>!space::Send "{u+00a0}"  ; non-breaking space
>!+space:: {
  Send "{u+00a0}"         ; non-breaking space
  Send "{blind}{vkE8}"
}
