# UltimateKEYS - Grave Accent mod (AutoHotkey v2/v1.1)

This version features a dead key on the grave accent (upper-left key) and on the ISO key (if present).

These keys allow the user to enter most of the diacritics and symbols as the AltGr (Right Alt) modifier already does (for the main layout).

## Add the following code to the regular script(s), below the 'Compose Key Sequences'

**AutoHotkey v2&nbsp;:**

```autohotkey
; Dead Key :  Grave Accent (`)

global dkGrave := Map()
dkGrave["``"] := "{u+0060}" ; (`) grave accent
dkGrave["~"] := "{u+00a0}"  ;     non-breaking space
dkGrave["1"] := "{u+00a1}"  ; (¡) inverted exclamation mark
dkGrave["!"] := "{u+00b9}"  ; (¹) superscript 1
dkGrave["2"] := "{u+00b2}"  ; (²) superscript 2
dkGrave["@"] := "{u+266b}"  ; (♫) beamed eighth notes
dkGrave["3"] := "{u+00b3}"  ; (³) superscript 3
dkGrave["#"] := "{u+00a7}"  ; (§) section sign
dkGrave["4"] := "{u+00a3}"  ; (£) pound sign
dkGrave["$"] := "{u+00a5}"  ; (¥) yen sign
dkGrave["5"] := "{u+20ac}"  ; (€) euro sign
dkGrave["%"] := "{u+00a2}"  ; (¢) cent sign (dollar)
dkGrave["6"] := "{u+00ed}"  ; (í) i with acute
dkGrave["^"] := "{u+00cd}"  ; (Í) I with acute
dkGrave["7"] := "{u+00ec}"  ; (ì) i with grave
dkGrave["&"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave["8"] := "{u+201e}"  ; („) double low-9 quotation mark
dkGrave["*"] := "{u+266a}"  ; (♪) eighth note
dkGrave["9"] := "{u+201c}"  ; (“) left double quotation mark
dkGrave["("] := "{u+2018}"  ; (‘) left single quotation mark
dkGrave["0"] := "{u+201d}"  ; (”) right double quotation mark
dkGrave[")"] := "{u+2019}"  ; (’) right single quotation mark
dkGrave["-"] := "{u+2013}"  ; (–) en dash
dkGrave["_"] := "{u+2014}"  ; (—) em dash
dkGrave["="] := "{u+00d7}"  ; (×) multiplication sign
dkGrave["+"] := "{u+00f7}"  ; (÷) division sign
dkGrave["q"] := "{u+00e6}"  ; (æ) letter ae
dkGrave["Q"] := "{u+00c6}"  ; (Æ) letter AE
dkGrave["w"] := "{u+00e5}"  ; (å) a with ring above
dkGrave["W"] := "{u+00c5}"  ; (Å) A with ring above
dkGrave["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkGrave["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkGrave["r"] := "{u+00ea}"  ; (ê) e with circumflex
dkGrave["R"] := "{u+00ca}"  ; (Ê) E with circumflex
dkGrave["t"] := "{u+00ee}"  ; (î) i with circumflex
dkGrave["T"] := "{u+00ce}"  ; (Î) I with circumflex
dkGrave["y"] := "{u+00fb}"  ; (û) u with circumflex
dkGrave["Y"] := "{u+00db}"  ; (Û) U with circumflex
dkGrave["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkGrave["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkGrave["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkGrave["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkGrave["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkGrave["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkGrave["p"] := "{u+00f4}"  ; (ô) o with circumflex
dkGrave["P"] := "{u+00d4}"  ; (Ô) O with circumflex
dkGrave["["] := "{u+00ab}"  ; («) left-pointing double angle quotation mark
dkGrave["{"] := "{u+2039}"  ; (‹) left-pointing single angle quotation mark
dkGrave["]"] := "{u+00bb}"  ; (») right-pointing double angle quotation mark
dkGrave["}"] := "{u+203a}"  ; (›) right-pointing single angle quotation mark
dkGrave["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkGrave["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkGrave["s"] := "{u+00df}"  ; (ß) small sharp s (Eszett)
dkGrave["S"] := "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
dkGrave["d"] := "{u+00e2}"  ; (â) a with circumflex
dkGrave["D"] := "{u+00c2}"  ; (Â) A with circumflex
dkGrave["f"] := "{u+00e9}"  ; (é) e with acute
dkGrave["F"] := "{u+00c9}"  ; (É) E with acute
dkGrave["g"] := "{u+00e8}"  ; (è) e with grave
dkGrave["G"] := "{u+00c8}"  ; (È) E with grave
dkGrave["h"] := "{u+00fa}"  ; (ú) u with acute
dkGrave["H"] := "{u+00da}"  ; (Ú) U with acute
dkGrave["j"] := "{u+00f9}"  ; (ù) u with grave
dkGrave["J"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave["k"] := "{u+0153}"  ; (œ) ligature oe
dkGrave["K"] := "{u+0152}"  ; (Œ) ligature OE
dkGrave["l"] := "{u+00f8}"  ; (ø) o with stroke
dkGrave["L"] := "{u+00d8}"  ; (Ø) O with stroke
dkGrave[";"] := "{u+00f3}"  ; (ó) o with acute
dkGrave[":"] := "{u+00d3}"  ; (Ó) O with acute
dkGrave["'"] := "{u+00f2}"  ; (ò) o with grave
dkGrave["`""] := "{u+00d2}" ; (Ò) O with grave
dkGrave["z"] := "{u+00e1}"  ; (á) a with acute
dkGrave["Z"] := "{u+00c1}"  ; (Á) A with acute
dkGrave["x"] := "{u+00e0}"  ; (à) a with grave
dkGrave["X"] := "{u+00c0}"  ; (À) A with grave
dkGrave["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkGrave["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkGrave["v"] := "{u+00e3}"  ; (ã) a with tilde
dkGrave["V"] := "{u+00c3}"  ; (Ã) A with tilde
dkGrave["b"] := "{u+00f5}"  ; (õ) o with tilde
dkGrave["B"] := "{u+00d5}"  ; (Õ) O with tilde
dkGrave["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkGrave["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkGrave["m"] := "{u+00b5}"  ; (µ) micro sign
dkGrave["M"] := "{u+00b1}"  ; (±) plus-minus sign
dkGrave[","] := "{u+00b0}"  ; (°) degree sign
dkGrave["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkGrave["."] := "{u+00b7}"  ; (·) middle dot
dkGrave[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkGrave["/"] := "{u+00bf}"  ; (¿) inverted question mark
dkGrave["?"] := "{u+2022}"  ; (•) bullet
dkGrave["\"] := "{u+005c}"  ; (\) backslash
dkGrave["|"] := "{u+007c}"  ; (|) vertical line

; Configuration :  'Grave Accent' (dead key) as alternate key for 'Right Alt'

vkC0:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if (ih.Input == " ")
    Send "{u+0060}"  ; (`) grave accent
  else if dkGrave.Has(ih.Input)
    Send dkGrave[ih.Input]
}

; Configuration :  Optional 'ISO Key' (dead key) as alternate key for 'Right Alt'

vkE2:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if (ih.Input == " ")
    Send "{u+005c}"  ; (\) backslash
  else if dkGrave.Has(ih.Input)
    Send dkGrave[ih.Input]
}
```

**AutoHotkey v1.1&nbsp;:**

```autohotkey
; Dead Key :  Grave Accent (`)

global dkGrave := ComObjCreate("Scripting.Dictionary")
dkGrave.item["``"] := "{u+0060}" ; (`) grave accent
dkGrave.item["~"] := "{u+00a0}"  ;     non-breaking space
dkGrave.item["1"] := "{u+00a1}"  ; (¡) inverted exclamation mark
dkGrave.item["!"] := "{u+00b9}"  ; (¹) superscript 1
dkGrave.item["2"] := "{u+00b2}"  ; (²) superscript 2
dkGrave.item["@"] := "{u+266b}"  ; (♫) beamed eighth notes
dkGrave.item["3"] := "{u+00b3}"  ; (³) superscript 3
dkGrave.item["#"] := "{u+00a7}"  ; (§) section sign
dkGrave.item["4"] := "{u+00a3}"  ; (£) pound sign
dkGrave.item["$"] := "{u+00a5}"  ; (¥) yen sign
dkGrave.item["5"] := "{u+20ac}"  ; (€) euro sign
dkGrave.item["%"] := "{u+00a2}"  ; (¢) cent sign (dollar)
dkGrave.item["6"] := "{u+00ed}"  ; (í) i with acute
dkGrave.item["^"] := "{u+00cd}"  ; (Í) I with acute
dkGrave.item["7"] := "{u+00ec}"  ; (ì) i with grave
dkGrave.item["&"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave.item["8"] := "{u+201e}"  ; („) double low-9 quotation mark
dkGrave.item["*"] := "{u+266a}"  ; (♪) eighth note
dkGrave.item["9"] := "{u+201c}"  ; (“) left double quotation mark
dkGrave.item["("] := "{u+2018}"  ; (‘) left single quotation mark
dkGrave.item["0"] := "{u+201d}"  ; (”) right double quotation mark
dkGrave.item[")"] := "{u+2019}"  ; (’) right single quotation mark
dkGrave.item["-"] := "{u+2013}"  ; (–) en dash
dkGrave.item["_"] := "{u+2014}"  ; (—) em dash
dkGrave.item["="] := "{u+00d7}"  ; (×) multiplication sign
dkGrave.item["+"] := "{u+00f7}"  ; (÷) division sign
dkGrave.item["q"] := "{u+00e6}"  ; (æ) letter ae
dkGrave.item["Q"] := "{u+00c6}"  ; (Æ) letter AE
dkGrave.item["w"] := "{u+00e5}"  ; (å) a with ring above
dkGrave.item["W"] := "{u+00c5}"  ; (Å) A with ring above
dkGrave.item["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkGrave.item["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkGrave.item["r"] := "{u+00ea}"  ; (ê) e with circumflex
dkGrave.item["R"] := "{u+00ca}"  ; (Ê) E with circumflex
dkGrave.item["t"] := "{u+00ee}"  ; (î) i with circumflex
dkGrave.item["T"] := "{u+00ce}"  ; (Î) I with circumflex
dkGrave.item["y"] := "{u+00fb}"  ; (û) u with circumflex
dkGrave.item["Y"] := "{u+00db}"  ; (Û) U with circumflex
dkGrave.item["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkGrave.item["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkGrave.item["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkGrave.item["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkGrave.item["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkGrave.item["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkGrave.item["p"] := "{u+00f4}"  ; (ô) o with circumflex
dkGrave.item["P"] := "{u+00d4}"  ; (Ô) O with circumflex
dkGrave.item["["] := "{u+00ab}"  ; («) left-pointing double angle quotation mark
dkGrave.item["{"] := "{u+2039}"  ; (‹) left-pointing single angle quotation mark
dkGrave.item["]"] := "{u+00bb}"  ; (») right-pointing double angle quotation mark
dkGrave.item["}"] := "{u+203a}"  ; (›) right-pointing single angle quotation mark
dkGrave.item["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkGrave.item["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkGrave.item["s"] := "{u+00df}"  ; (ß) small sharp s (Eszett)
dkGrave.item["S"] := "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
dkGrave.item["d"] := "{u+00e2}"  ; (â) a with circumflex
dkGrave.item["D"] := "{u+00c2}"  ; (Â) A with circumflex
dkGrave.item["f"] := "{u+00e9}"  ; (é) e with acute
dkGrave.item["F"] := "{u+00c9}"  ; (É) E with acute
dkGrave.item["g"] := "{u+00e8}"  ; (è) e with grave
dkGrave.item["G"] := "{u+00c8}"  ; (È) E with grave
dkGrave.item["h"] := "{u+00fa}"  ; (ú) u with acute
dkGrave.item["H"] := "{u+00da}"  ; (Ú) U with acute
dkGrave.item["j"] := "{u+00f9}"  ; (ù) u with grave
dkGrave.item["J"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave.item["k"] := "{u+0153}"  ; (œ) ligature oe
dkGrave.item["K"] := "{u+0152}"  ; (Œ) ligature OE
dkGrave.item["l"] := "{u+00f8}"  ; (ø) o with stroke
dkGrave.item["L"] := "{u+00d8}"  ; (Ø) O with stroke
dkGrave.item[";"] := "{u+00f3}"  ; (ó) o with acute
dkGrave.item[":"] := "{u+00d3}"  ; (Ó) O with acute
dkGrave.item["'"] := "{u+00f2}"  ; (ò) o with grave
dkGrave.item[""""] := "{u+00d2}" ; (Ò) O with grave
dkGrave.item["z"] := "{u+00e1}"  ; (á) a with acute
dkGrave.item["Z"] := "{u+00c1}"  ; (Á) A with acute
dkGrave.item["x"] := "{u+00e0}"  ; (à) a with grave
dkGrave.item["X"] := "{u+00c0}"  ; (À) A with grave
dkGrave.item["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkGrave.item["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkGrave.item["v"] := "{u+00e3}"  ; (ã) a with tilde
dkGrave.item["V"] := "{u+00c3}"  ; (Ã) A with tilde
dkGrave.item["b"] := "{u+00f5}"  ; (õ) o with tilde
dkGrave.item["B"] := "{u+00d5}"  ; (Õ) O with tilde
dkGrave.item["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkGrave.item["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkGrave.item["m"] := "{u+00b5}"  ; (µ) micro sign
dkGrave.item["M"] := "{u+00b1}"  ; (±) plus-minus sign
dkGrave.item[","] := "{u+00b0}"  ; (°) degree sign
dkGrave.item["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkGrave.item["."] := "{u+00b7}"  ; (·) middle dot
dkGrave.item[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkGrave.item["/"] := "{u+00bf}"  ; (¿) inverted question mark
dkGrave.item["?"] := "{u+2022}"  ; (•) bullet
dkGrave.item["\"] := "{u+005c}"  ; (\) backslash
dkGrave.item["|"] := "{u+007c}"  ; (|) vertical line

; Configuration :  'Grave Accent' (dead key) as alternate key for 'Right Alt'

vkC0::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if (ih.Input == " ")
    Send {u+0060}  ; (`) grave accent
  else
    Send % dkGrave.item[ih.Input]
  return

; Configuration :  Optional 'ISO Key' (dead key) as alternate key for 'Right Alt'

vkE2::
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if (ih.Input == " ")
    Send {u+005c}  ; (\) backslash
  else
    Send % dkGrave.item[ih.Input]
  return
```
