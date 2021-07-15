; UltimateKEYS CE SW (Scroll Lock).ahk - 2021-06-26

; Created by :  Pieter Degroote

; License :     GNU General Public License Version 3

; GitHub :      https://github.com/pieter-degroote/UltimateKEYS


; Requirements :

; Keyboard layout (on Windows OS) :  US QWERTY

; AutoHotkey v1.1 (https://www.autohotkey.com/)



ListLines Off  ; omits recently executed lines from history (for privacy and security)
#KeyHistory 0  ; disables the key history (for privacy and security)

SendMode Event


; Dead Key :  Not Sign

dkNotSign := ComObjCreate("Scripting.Dictionary")
dkNotSign.item["a"] := "{u+0101}"  ; (ā) a with macron
dkNotSign.item["A"] := "{u+0100}"  ; (Ā) A with macron
dkNotSign.item["d"] := "{u+00f0}"  ; (ð) small letter eth
dkNotSign.item["D"] := "{u+00d0}"  ; (Ð) capital letter eth
dkNotSign.item["e"] := "{u+0113}"  ; (ē) e with macron
dkNotSign.item["E"] := "{u+0112}"  ; (Ē) E with macron
dkNotSign.item["i"] := "{u+012b}"  ; (ī) i with macron
dkNotSign.item["I"] := "{u+012a}"  ; (Ī) I with macron
dkNotSign.item["o"] := "{u+014d}"  ; (ō) o with macron
dkNotSign.item["O"] := "{u+014c}"  ; (Ō) O with macron
dkNotSign.item["s"] := "{u+0161}"  ; (š) s with caron
dkNotSign.item["S"] := "{u+0160}"  ; (Š) S with caron
dkNotSign.item["t"] := "{u+00fe}"  ; (þ) small letter thorn
dkNotSign.item["T"] := "{u+00de}"  ; (Þ) capital letter thorn
dkNotSign.item["u"] := "{u+016b}"  ; (ū) u with macron
dkNotSign.item["U"] := "{u+016a}"  ; (Ū) U with macron
dkNotSign.item["y"] := "{u+00fd}"  ; (ý) y with acute
dkNotSign.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkNotSign.item["z"] := "{u+017e}"  ; (ž) z with caron
dkNotSign.item["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkNotSign.item["b"] := "{u+2022}"  ; (•) bullet
dkNotSign.item["B"] := "{u+2022}"  ; (•) bullet
dkNotSign.item["c"] := "{u+00a4}"  ; (¤) currency sign
dkNotSign.item["C"] := "{u+00a4}"  ; (¤) currency sign
dkNotSign.item["f"] := "{u+0192}"  ; (ƒ) f with hook
dkNotSign.item["F"] := "{u+0192}"  ; (ƒ) f with hook
dkNotSign.item["m"] := "{u+2122}"  ; (™) trademark symbol
dkNotSign.item["M"] := "{u+2122}"  ; (™) trademark symbol
dkNotSign.item["q"] := "{u+201a}"  ; (‚) single low-9 quotation mark
dkNotSign.item["Q"] := "{u+201a}"  ; (‚) single low-9 quotation mark
dkNotSign.item["1"] := "{u+2260}"  ; (≠) not equal to
dkNotSign.item["!"] := "{u+2260}"  ; (≠) not equal to
dkNotSign.item["5"] := "{u+2030}"  ; (‰) per mille sign
dkNotSign.item["%"] := "{u+2030}"  ; (‰) per mille sign
dkNotSign.item["8"] := "{u+221e}"  ; (∞) infinity symbol
dkNotSign.item["*"] := "{u+221e}"  ; (∞) infinity symbol
dkNotSign.item["9"] := "{u+2002}"  ;     en space
dkNotSign.item["("] := "{u+2002}"  ;     en space
dkNotSign.item["0"] := "{u+2003}"  ;     em space
dkNotSign.item[")"] := "{u+2003}"  ;     em space
dkNotSign.item["-"] := "{u+2013}"  ; (–) en dash
dkNotSign.item["_"] := "{u+2013}"  ; (–) en dash
dkNotSign.item["="] := "{u+2014}"  ; (—) em dash
dkNotSign.item["+"] := "{u+2014}"  ; (—) em dash
dkNotSign.item["``"] := "{u+2248}" ; (≈) almost equal to
dkNotSign.item["~"] := "{u+2248}"  ; (≈) almost equal to
dkNotSign.item[","] := "{u+2264}"  ; (≤) less-than or equal to
dkNotSign.item["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkNotSign.item["."] := "{u+2265}"  ; (≥) greater-than or equal to
dkNotSign.item[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkNotSign.item[" "] := "{u+00ac}"  ; (¬) not sign


; Dead Key :  Broken Bar

dkBrokenBar := ComObjCreate("Scripting.Dictionary")
dkBrokenBar.item["a"] := "{u+00aa}"  ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkBrokenBar.item["A"] := "{u+00aa}"  ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkBrokenBar.item["o"] := "{u+00ba}"  ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkBrokenBar.item["O"] := "{u+00ba}"  ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkBrokenBar.item[" "] := "{u+00a6}"  ; (¦) broken bar


; Configuration :  Switch positions of symbols and digits with Scroll Lock

$1::
  if GetKeyState("ScrollLock", "T")
    Send {!}  ; exclamation mark
  else
    Send 1    ; digit 1
  return
$+1::
  if GetKeyState("ScrollLock", "T")
    Send 1    ; digit 1
  else
    Send {!}  ; exclamation mark
  return

$2::
  if GetKeyState("ScrollLock", "T")
    Send @  ; at sign
  else
    Send 2  ; digit 2
  return
$+2::
  if GetKeyState("ScrollLock", "T")
    Send 2  ; digit 2
  else
    Send @  ; at sign
  return

$3::
  if GetKeyState("ScrollLock", "T")
    Send {#}  ; number sign
  else
    Send 3    ; digit 3
  return
$+3::
  if GetKeyState("ScrollLock", "T")
    Send 3    ; digit 3
  else
    Send {#}  ; number sign
  return

$4::
  if GetKeyState("ScrollLock", "T")
    Send $  ; dollar sign
  else
    Send 4  ; digit 4
  return
$+4::
  if GetKeyState("ScrollLock", "T")
    Send 4  ; digit 4
  else
    Send $  ; dollar sign
  return

$5::
  if GetKeyState("ScrollLock", "T")
    Send `%  ; percent sign
  else
    Send 5   ; digit 5
  return
$+5::
  if GetKeyState("ScrollLock", "T")
    Send 5   ; digit 5
  else
    Send `%  ; percent sign
  return

$6::
  if GetKeyState("ScrollLock", "T")
    Send {^}  ; circumflex accent
  else
    Send 6    ; digit 6
  return
$+6::
  if GetKeyState("ScrollLock", "T")
    Send 6    ; digit 6
  else
    Send {^}  ; circumflex accent
  return

$7::
  if GetKeyState("ScrollLock", "T")
    Send &  ; ampersand
  else
    Send 7  ; digit 7
  return
$+7::
  if GetKeyState("ScrollLock", "T")
    Send 7  ; digit 7
  else
    Send &  ; ampersand
  return

$8::
  if GetKeyState("ScrollLock", "T")
    Send *  ; asterisk
  else
    Send 8  ; digit 8
  return
$+8::
  if GetKeyState("ScrollLock", "T")
    Send 8  ; digit 8
  else
    Send *  ; asterisk
  return

$9::
  if GetKeyState("ScrollLock", "T")
    Send (  ; left parenthesis
  else
    Send 9  ; digit 9
  return
$+9::
  if GetKeyState("ScrollLock", "T")
    Send 9  ; digit 9
  else
    Send (  ; left parenthesis
  return

$0::
  if GetKeyState("ScrollLock", "T")
    Send )  ; right parenthesis
  else
    Send 0  ; digit 0
  return
$+0::
  if GetKeyState("ScrollLock", "T")
    Send 0  ; digit 0
  else
    Send )  ; right parenthesis
  return


; Configuration :  'Right Alt' and 'Right Alt + Shift' on US QWERTY

>!a::
  if GetKeyState("CapsLock", "T")
    Send {u+00c4}  ; (Ä) A with diaeresis
  else
    Send {u+00e4}  ; (ä) a with diaeresis
  return
>!+a::
  if GetKeyState("CapsLock", "T")
    Send {u+00e4}  ; (ä) a with diaeresis
  else
    Send {u+00c4}  ; (Ä) A with diaeresis
  Send {blind}{vkE8}
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

>!z::
  if GetKeyState("CapsLock", "T")
    Send {u+00c0}  ; (À) A with grave
  else
    Send {u+00e0}  ; (à) a with grave
  return
>!+z::
  if GetKeyState("CapsLock", "T")
    Send {u+00e0}  ; (à) a with grave
  else
    Send {u+00c0}  ; (À) A with grave
  Send {blind}{vkE8}
  return

>!x::
  if GetKeyState("CapsLock", "T")
    Send {u+00c1}  ; (Á) A with acute
  else
    Send {u+00e1}  ; (á) a with acute
  return
>!+x::
  if GetKeyState("CapsLock", "T")
    Send {u+00e1}  ; (á) a with acute
  else
    Send {u+00c1}  ; (Á) A with acute
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
    Send {u+00ca}  ; (Ê) E with circumflex
  else
    Send {u+00ea}  ; (ê) e with circumflex
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {u+00ea}  ; (ê) e with circumflex
  else
    Send {u+00ca}  ; (Ê) E with circumflex
  Send {blind}{vkE8}
  return

>!e::
  if GetKeyState("CapsLock", "T")
    Send {u+00cb}  ; (Ë) E with diaeresis
  else
    Send {u+00eb}  ; (ë) e with diaeresis
  return
>!+e::
  if GetKeyState("CapsLock", "T")
    Send {u+00eb}  ; (ë) e with diaeresis
  else
    Send {u+00cb}  ; (Ë) E with diaeresis
  Send {blind}{vkE8}
  return

>!f::
  if GetKeyState("CapsLock", "T")
    Send {u+00c8}  ; (È) E with grave
  else
    Send {u+00e8}  ; (è) e with grave
  return
>!+f::
  if GetKeyState("CapsLock", "T")
    Send {u+00e8}  ; (è) e with grave
  else
    Send {u+00c8}  ; (È) E with grave
  Send {blind}{vkE8}
  return

>!g::
  if GetKeyState("CapsLock", "T")
    Send {u+00c9}  ; (É) E with acute
  else
    Send {u+00e9}  ; (é) e with acute
  return
>!+g::
  if GetKeyState("CapsLock", "T")
    Send {u+00e9}  ; (é) e with acute
  else
    Send {u+00c9}  ; (É) E with acute
  Send {blind}{vkE8}
  return

>!i::
  if GetKeyState("CapsLock", "T")
    Send {u+00cf}  ; (Ï) I with diaeresis
  else
    Send {u+00ef}  ; (ï) i with diaeresis
  return
>!+i::
  if GetKeyState("CapsLock", "T")
    Send {u+00ef}  ; (ï) i with diaeresis
  else
    Send {u+00cf}  ; (Ï) I with diaeresis
  Send {blind}{vkE8}
  return

>!v::
  if GetKeyState("CapsLock", "T")
    Send {u+00cc}  ; (Ì) I with grave
  else
    Send {u+00ec}  ; (ì) i with grave
  return
>!+v::
  if GetKeyState("CapsLock", "T")
    Send {u+00ec}  ; (ì) i with grave
  else
    Send {u+00cc}  ; (Ì) I with grave
  Send {blind}{vkE8}
  return

>!b::
  if GetKeyState("CapsLock", "T")
    Send {u+00cd}  ; (Í) I with acute
  else
    Send {u+00ed}  ; (í) i with acute
  return
>!+b::
  if GetKeyState("CapsLock", "T")
    Send {u+00ed}  ; (í) i with acute
  else
    Send {u+00cd}  ; (Í) I with acute
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

>!o::
  if GetKeyState("CapsLock", "T")
    Send {u+00d6}  ; (Ö) O with diaeresis
  else
    Send {u+00f6}  ; (ö) o with diaeresis
  return
>!+o::
  if GetKeyState("CapsLock", "T")
    Send {u+00f6}  ; (ö) o with diaeresis
  else
    Send {u+00d6}  ; (Ö) O with diaeresis
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

>!,::
  if GetKeyState("CapsLock", "T")
    Send {u+00d2}  ; (Ò) O with grave
  else
    Send {u+00f2}  ; (ò) o with grave
  return
>!<::
  if GetKeyState("CapsLock", "T")
    Send {u+00f2}  ; (ò) o with grave
  else
    Send {u+00d2}  ; (Ò) O with grave
  Send {blind}{vkE8}
  return

>!.::
  if GetKeyState("CapsLock", "T")
    Send {u+00d3}  ; (Ó) O with acute
  else
    Send {u+00f3}  ; (ó) o with acute
  return
>!>::
  if GetKeyState("CapsLock", "T")
    Send {u+00f3}  ; (ó) o with acute
  else
    Send {u+00d3}  ; (Ó) O with acute
  Send {blind}{vkE8}
  return

>!t::
  if GetKeyState("CapsLock", "T")
    Send {u+00ce}  ; (Î) I with circumflex
  else
    Send {u+00ee}  ; (î) i with circumflex
  return
>!+t::
  if GetKeyState("CapsLock", "T")
    Send {u+00ee}  ; (î) i with circumflex
  else
    Send {u+00ce}  ; (Î) I with circumflex
  Send {blind}{vkE8}
  return

>!u::
  if GetKeyState("CapsLock", "T")
    Send {u+00dc}  ; (Ü) U with diaeresis
  else
    Send {u+00fc}  ; (ü) u with diaeresis
  return
>!+u::
  if GetKeyState("CapsLock", "T")
    Send {u+00fc}  ; (ü) u with diaeresis
  else
    Send {u+00dc}  ; (Ü) U with diaeresis
  Send {blind}{vkE8}
  return

>!h::
  if GetKeyState("CapsLock", "T")
    Send {u+00d9}  ; (Ù) U with grave
  else
    Send {u+00f9}  ; (ù) u with grave
  return
>!+h::
  if GetKeyState("CapsLock", "T")
    Send {u+00f9}  ; (ù) u with grave
  else
    Send {u+00d9}  ; (Ù) U with grave
  Send {blind}{vkE8}
  return

>!j::
  if GetKeyState("CapsLock", "T")
    Send {u+00da}  ; (Ú) U with acute
  else
    Send {u+00fa}  ; (ú) u with acute
  return
>!+j::
  if GetKeyState("CapsLock", "T")
    Send {u+00fa}  ; (ú) u with acute
  else
    Send {u+00da}  ; (Ú) U with acute
  Send {blind}{vkE8}
  return

>!y::
  if GetKeyState("CapsLock", "T")
    Send {u+0178}  ; (Ÿ) Y with diaeresis
  else
    Send {u+00ff}  ; (ÿ) y with diaeresis
  return
>!+y::
  if GetKeyState("CapsLock", "T")
    Send {u+00ff}  ; (ÿ) y with diaeresis
  else
    Send {u+0178}  ; (Ÿ) Y with diaeresis
  Send {blind}{vkE8}
  return

>!r::
  if GetKeyState("CapsLock", "T")
    Send {u+00c2}  ; (Â) A with circumflex
  else
    Send {u+00e2}  ; (â) a with circumflex
  return
>!+r::
  if GetKeyState("CapsLock", "T")
    Send {u+00e2}  ; (â) a with circumflex
  else
    Send {u+00c2}  ; (Â) A with circumflex
  Send {blind}{vkE8}
  return

>!`::
  if GetKeyState("CapsLock", "T")
    Send {u+00c3}  ; (Ã) A with tilde
  else
    Send {u+00e3}  ; (ã) a with tilde
  return
>!~::
  if GetKeyState("CapsLock", "T")
    Send {u+00e3}  ; (ã) a with tilde
  else
    Send {u+00c3}  ; (Ã) A with tilde
  Send {blind}{vkE8}
  return

>!6::
  if GetKeyState("CapsLock", "T")
    Send {u+00d4}  ; (Ô) O with circumflex
  else
    Send {u+00f4}  ; (ô) o with circumflex
  return
>!+6::
  if GetKeyState("CapsLock", "T")
    Send {u+00f4}  ; (ô) o with circumflex
  else
    Send {u+00d4}  ; (Ô) O with circumflex
  Send {blind}{vkE8}
  return

>!7::
  if GetKeyState("CapsLock", "T")
    Send {u+00d5}  ; (Õ) O with tilde
  else
    Send {u+00f5}  ; (õ) o with tilde
  return
>!+7::
  if GetKeyState("CapsLock", "T")
    Send {u+00f5}  ; (õ) o with tilde
  else
    Send {u+00d5}  ; (Õ) O with tilde
  Send {blind}{vkE8}
  return

>!'::
  if GetKeyState("CapsLock", "T")
    Send {u+00db}  ; (Û) U with circumflex
  else
    Send {u+00fb}  ; (û) u with circumflex
  return
>!"::
  if GetKeyState("CapsLock", "T")
    Send {u+00fb}  ; (û) u with circumflex
  else
    Send {u+00db}  ; (Û) U with circumflex
  Send {blind}{vkE8}
  return

>!m::Send {u+00b5}  ; (µ) micro sign
>!+m::
  Send {u+221a}     ; (√) square root
  Send {blind}{vkE8}
  return

>!p::Send {u+2020}  ; (†) dagger
>!+p::
  Send {u+2021}     ; (‡) double dagger
  Send {blind}{vkE8}  ; suppresses 'Right Alt + Shift' hotkey
  return

>!s::Send {u+00df}  ; (ß) small sharp s (Eszett)
>!+s::
  Send {u+00a7}     ; (§) section sign
  Send {blind}{vkE8}  ; suppresses 'Right Alt + Shift' hotkey
  return

>!1::Send {u+00a1}  ; (¡) inverted exclamation mark
>!+1::
  Send {u+00b9}     ; (¹) superscript 1
  Send {blind}{vkE8}
  return

>!2::Send {u+00a9}  ; (©) copyright sign
>!+2::
  Send {u+00b2}     ; (²) superscript 2
  Send {blind}{vkE8}
  return

>!3::Send {u+00b1}  ; (±) plus-minus sign
>!+3::
  Send {u+00b3}     ; (³) superscript 3
  Send {blind}{vkE8}
  return

>!4::Send {u+00a3}  ; (£) pound sign
>!+4::
  Send {u+00a5}     ; (¥) yen sign
  Send {blind}{vkE8}
  return

>!5::Send {u+20ac}  ; (€) euro sign
>!+5::
  Send {u+00a2}     ; (¢) cent sign (dollar)
  Send {blind}{vkE8}
  return

>!8::Send {u+201e}  ; („) double low-9 quotation mark
>!+8::
  Send {u+00b6}     ; (¶) pilcrow sign
  Send {blind}{vkE8}
  return

>!9::Send {u+201c}  ; (“) left double quotation mark
>!+9::
  Send {u+2018}     ; (‘) left single quotation mark
  Send {blind}{vkE8}
  return

>!0::Send {u+201d}  ; (”) right double quotation mark
>!+0::
  Send {u+2019}     ; (’) right single quotation mark
  Send {blind}{vkE8}
  return

>!-::Send {u+00ae}  ; (®) registered sign
>!_::
  Send {u+207f}     ; (ⁿ) superscript n
  Send {blind}{vkE8}
  return

>!=::Send {u+00d7}  ; (×) multiplication sign
>!+=::
  Send {u+00f7}     ; (÷) division sign
  Send {blind}{vkE8}
  return

>![::Send {u+00ab}  ; («) left-pointing double angle quotation mark
>!{::
  Send {u+2039}     ; (‹) left-pointing single angle quotation mark
  Send {blind}{vkE8}
  return

>!]::Send {u+00bb}  ; (») right-pointing double angle quotation mark
>!}::
  Send {u+203a}     ; (›) right-pointing single angle quotation mark
  Send {blind}{vkE8}
  return

>!;::Send {u+00b0}  ; (°) degree sign
>!+;::
  Send {u+00b7}     ; (·) middle dot
  Send {blind}{vkE8}
  return

>!/::Send {u+00bf}  ; (¿) inverted question mark
>!?::
  Send {u+2026}     ; (…) horizontal ellipsis
  Send {blind}{vkE8}
  return

>!space::Send {u+00a0}  ; non-breaking space
>!+space::
  Send {u+00a0}         ; non-breaking space
  Send {blind}{vkE8}
  return


; Configuration :  Dead Keys on 'Right Alt' and 'Right Alt + Shift'

>!\::
  Send {blind}{vkE8}
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkNotSign.item[key]
  key := ""
  Send {blind}{vkE8}
  return
>!|::
  Send {blind}{vkE8}
  Input, key, L1, {bs}{del}{esc}{home}{end}
  Send % dkBrokenBar.item[key]
  key := ""
  Send {blind}{vkE8}
  return
