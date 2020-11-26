; UltimateKEYS SW - KBDUSX - 2020-11-11 (for AutoHotkey v2.0 alpha).ahk

; Created by :  Pieter Degroote

; License :  GNU General Public License Version 3

; Website :  https://github.com/pieter-degroote/UltimateKEYS


; Requirements :

; Keyboard layout (on Windows OS) :  United States-International

; AutoHotkey v2.0-a122-f595abc2 (https://www.autohotkey.com/)



ListLines False  ; omits recently executed lines from history (for privacy and security)
#KeyHistory 0    ; disables the key history (for privacy and security)

SendMode "Event"  ; allows chaining of customized key combinations

global dkEndKeys := "{bs}{del}{esc}{home}{end}"  ; ends dead key input on specific keys


; Dead Key :  Circumflex Accent

global dkCircumflex := Map()
dkCircumflex["a"] := "{u+00e2}"  ; (â) a with circumflex
dkCircumflex["A"] := "{u+00c2}"  ; (Â) A with circumflex
dkCircumflex["c"] := "{u+0109}"  ; (ĉ) c with circumflex
dkCircumflex["C"] := "{u+0108}"  ; (Ĉ) C with circumflex
dkCircumflex["e"] := "{u+00ea}"  ; (ê) e with circumflex
dkCircumflex["E"] := "{u+00ca}"  ; (Ê) E with circumflex
dkCircumflex["g"] := "{u+011d}"  ; (ĝ) g with circumflex
dkCircumflex["G"] := "{u+011c}"  ; (Ĝ) G with circumflex
dkCircumflex["h"] := "{u+0125}"  ; (ĥ) h with circumflex
dkCircumflex["H"] := "{u+0124}"  ; (Ĥ) H with circumflex
dkCircumflex["i"] := "{u+00ee}"  ; (î) i with circumflex
dkCircumflex["I"] := "{u+00ce}"  ; (Î) I with circumflex
dkCircumflex["j"] := "{u+0135}"  ; (ĵ) j with circumflex
dkCircumflex["J"] := "{u+0134}"  ; (Ĵ) J with circumflex
dkCircumflex["o"] := "{u+00f4}"  ; (ô) o with circumflex
dkCircumflex["O"] := "{u+00d4}"  ; (Ô) O with circumflex
dkCircumflex["s"] := "{u+015d}"  ; (ŝ) s with circumflex
dkCircumflex["S"] := "{u+015c}"  ; (Ŝ) S with circumflex
dkCircumflex["u"] := "{u+00fb}"  ; (û) u with circumflex
dkCircumflex["U"] := "{u+00db}"  ; (Û) U with circumflex
dkCircumflex["w"] := "{u+0175}"  ; (ŵ) w with circumflex
dkCircumflex["W"] := "{u+0174}"  ; (Ŵ) W with circumflex
dkCircumflex["y"] := "{u+0177}"  ; (ŷ) y with circumflex
dkCircumflex["Y"] := "{u+0176}"  ; (Ŷ) Y with circumflex
dkCircumflex["z"] := "{u+1e91}"  ; (ẑ) z with circumflex
dkCircumflex["Z"] := "{u+1e90}"  ; (Ẑ) Z with circumflex
dkCircumflex["1"] := "{u+21d9}"  ; (⇙) south west double arrow
dkCircumflex["2"] := "{u+21d3}"  ; (⇓) downwards double arrow
dkCircumflex["3"] := "{u+21d8}"  ; (⇘) south east double arrow
dkCircumflex["4"] := "{u+21d0}"  ; (⇐) leftwards double arrow
dkCircumflex["5"] := "{u+21d5}"  ; (⇕) up down double arrow
dkCircumflex["6"] := "{u+21d2}"  ; (⇒) rightwards double arrow
dkCircumflex["7"] := "{u+21d6}"  ; (⇖) north west double arrow
dkCircumflex["8"] := "{u+21d1}"  ; (⇑) upwards double arrow
dkCircumflex["9"] := "{u+21d7}"  ; (⇗) north east double arrow
dkCircumflex["0"] := "{u+21d4}"  ; (⇔) left right double arrow
dkCircumflex["!"] := "{u+21d9}"  ; (⇙) south west double arrow
dkCircumflex["@"] := "{u+21d3}"  ; (⇓) downwards double arrow
dkCircumflex["#"] := "{u+21d8}"  ; (⇘) south east double arrow
dkCircumflex["$"] := "{u+21d0}"  ; (⇐) leftwards double arrow
dkCircumflex["%"] := "{u+21d5}"  ; (⇕) up down double arrow
dkCircumflex["^"] := "{u+21d2}"  ; (⇒) rightwards double arrow
dkCircumflex["&"] := "{u+21d6}"  ; (⇖) north west double arrow
dkCircumflex["*"] := "{u+21d1}"  ; (⇑) upwards double arrow
dkCircumflex["("] := "{u+21d7}"  ; (⇗) north east double arrow
dkCircumflex[")"] := "{u+21d4}"  ; (⇔) left right double arrow
dkCircumflex["n"] := "{u+20a6}"  ; (₦) Nigerian naira
dkCircumflex["N"] := "{u+20a6}"  ; (₦) Nigerian naira
dkCircumflex[" "] := "{^} "       ;     circumflex accent

; Smart error-tolerant optimization for circumflex in French

dkCircumflex[chr(0x00e4)] := "{u+00e2}"  ; (ä -> â) a with circumflex
dkCircumflex[chr(0x00c4)] := "{u+00c2}"  ; (Ä -> Â) A with circumflex
dkCircumflex[chr(0x00eb)] := "{u+00ea}"  ; (ë -> ê) e with circumflex
dkCircumflex[chr(0x00cb)] := "{u+00ca}"  ; (Ë -> Ê) E with circumflex
dkCircumflex[chr(0x00ef)] := "{u+00ee}"  ; (ï -> î) i with circumflex
dkCircumflex[chr(0x00cf)] := "{u+00ce}"  ; (Ï -> Î) I with circumflex
dkCircumflex[chr(0x00f6)] := "{u+00f4}"  ; (ö -> ô) o with circumflex
dkCircumflex[chr(0x00d6)] := "{u+00d4}"  ; (Ö -> Ô) O with circumflex
dkCircumflex[chr(0x00fc)] := "{u+00fb}"  ; (ü -> û) u with circumflex
dkCircumflex[chr(0x00dc)] := "{u+00db}"  ; (Ü -> Û) U with circumflex


; Dead Key :  Caron

global dkCaron := Map()
dkCaron["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron["c"] := "{u+010d}"  ; (č) c with caron
dkCaron["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron["s"] := "{u+0161}"  ; (š) s with caron
dkCaron["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron["v"] := "{u+01da}"  ; (ǚ) u with diaeresis and caron
dkCaron["V"] := "{u+01d9}"  ; (Ǚ) U with diaeresis and caron
dkCaron["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron["#"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
dkCaron["3"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron
dkCaron["@"] := "{u+25bc}"  ; (▼) black down-pointing triangle
dkCaron["2"] := "{u+25bd}"  ; (▽) white down-pointing triangle
dkCaron["$"] := "{u+25c0}"  ; (◀) black left-pointing triangle
dkCaron["4"] := "{u+25c1}"  ; (◁) white left-pointing triangle
dkCaron["^"] := "{u+25b6}"  ; (▶) black right-pointing triangle
dkCaron["6"] := "{u+25b7}"  ; (▷) white right-pointing triangle
dkCaron["*"] := "{u+25b2}"  ; (▲) black up-pointing triangle
dkCaron["8"] := "{u+25b3}"  ; (△) white up-pointing triangle
dkCaron[" "] := "{u+02c7}"  ; (ˇ) caron


; Dead Key :  Ring/Dot Above

global dkRingDotAbove := Map()
dkRingDotAbove["a"] := "{u+00e5}"          ; (å) a with ring above
dkRingDotAbove["A"] := "{u+00c5}"          ; (Å) A with ring above
dkRingDotAbove[chr(0x00e4)] := "{u+0227}"  ; (ä -> ȧ) a with dot above
dkRingDotAbove[chr(0x00c4)] := "{u+0226}"  ; (Ä -> Ȧ) A with dot above
dkRingDotAbove["b"] := "{u+1e03}"          ; (ḃ) b with dot above
dkRingDotAbove["B"] := "{u+1e02}"          ; (Ḃ) B with dot above
dkRingDotAbove["c"] := "{u+010b}"          ; (ċ) c with dot above
dkRingDotAbove["C"] := "{u+010a}"          ; (Ċ) C with dot above
dkRingDotAbove["d"] := "{u+1e0b}"          ; (ḋ) d with dot above
dkRingDotAbove["D"] := "{u+1e0a}"          ; (Ḋ) D with dot above
dkRingDotAbove["e"] := "{u+0117}"          ; (ė) e with dot above
dkRingDotAbove["E"] := "{u+0116}"          ; (Ė) E with dot above
dkRingDotAbove["f"] := "{u+1e1f}"          ; (ḟ) f with dot above
dkRingDotAbove["F"] := "{u+1e1e}"          ; (Ḟ) F with dot above
dkRingDotAbove["g"] := "{u+0121}"          ; (ġ) g with dot above
dkRingDotAbove["G"] := "{u+0120}"          ; (Ġ) G with dot above
dkRingDotAbove["h"] := "{u+1e23}"          ; (ḣ) h with dot above
dkRingDotAbove["H"] := "{u+1e22}"          ; (Ḣ) H with dot above
dkRingDotAbove["i"] := "{u+0131}"          ; (ı) dotless i (Turkish, Azerbaijani)
dkRingDotAbove["I"] := "{u+0130}"          ; (İ) I with dot above (Turkish, Azerbaijani)
dkRingDotAbove["j"] := "{u+0237}"          ; (ȷ) dotless j
dkRingDotAbove["l"] := "{u+0140}"          ; (ŀ) l with middle dot
dkRingDotAbove["L"] := "{u+013f}"          ; (Ŀ) L with middle dot
dkRingDotAbove["m"] := "{u+1e41}"          ; (ṁ) m with dot above
dkRingDotAbove["M"] := "{u+1e40}"          ; (Ṁ) M with dot above
dkRingDotAbove["n"] := "{u+1e45}"          ; (ṅ) n with dot above
dkRingDotAbove["N"] := "{u+1e44}"          ; (Ṅ) N with dot above
dkRingDotAbove["o"] := "{u+022f}"          ; (ȯ) o with dot above
dkRingDotAbove["O"] := "{u+022e}"          ; (Ȯ) O with dot above
dkRingDotAbove["p"] := "{u+1e57}"          ; (ṗ) p with dot above
dkRingDotAbove["P"] := "{u+1e56}"          ; (Ṗ) P with dot above
dkRingDotAbove["r"] := "{u+1e59}"          ; (ṙ) r with dot above
dkRingDotAbove["R"] := "{u+1e58}"          ; (Ṙ) R with dot above
dkRingDotAbove["s"] := "{u+1e61}"          ; (ṡ) s with dot above
dkRingDotAbove["S"] := "{u+1e60}"          ; (Ṡ) S with dot above
dkRingDotAbove["t"] := "{u+1e6b}"          ; (ṫ) t with dot above
dkRingDotAbove["T"] := "{u+1e6a}"          ; (Ṫ) T with dot above
dkRingDotAbove["u"] := "{u+016f}"          ; (ů) u with ring above
dkRingDotAbove["U"] := "{u+016e}"          ; (Ů) U with ring above
dkRingDotAbove["w"] := "{u+1e87}"          ; (ẇ) w with dot above
dkRingDotAbove["W"] := "{u+1e86}"          ; (Ẇ) W with dot above
dkRingDotAbove[chr(0x00e5)] := "{u+1e98}"  ; (å -> ẘ) w with ring above
dkRingDotAbove["x"] := "{u+1e8b}"          ; (ẋ) x with dot above
dkRingDotAbove["X"] := "{u+1e8a}"          ; (Ẋ) X with dot above
dkRingDotAbove["y"] := "{u+1e8f}"          ; (ẏ) y with dot above
dkRingDotAbove["Y"] := "{u+1e8e}"          ; (Ẏ) Y with dot above
dkRingDotAbove[chr(0x00ff)] := "{u+1e99}"  ; (ÿ -> ẙ) y with ring above
dkRingDotAbove["z"] := "{u+017c}"          ; (ż) z with dot above
dkRingDotAbove["Z"] := "{u+017b}"          ; (Ż) Z with dot above
dkRingDotAbove["1"] := "{u+2199}"          ; (↙) south west arrow
dkRingDotAbove["2"] := "{u+2193}"          ; (↓) downwards arrow
dkRingDotAbove["3"] := "{u+2198}"          ; (↘) south east arrow
dkRingDotAbove["4"] := "{u+2190}"          ; (←) leftwards arrow
dkRingDotAbove["5"] := "{u+2195}"          ; (↕) up down arrow
dkRingDotAbove["6"] := "{u+2192}"          ; (→) rightwards arrow
dkRingDotAbove["7"] := "{u+2196}"          ; (↖) north west arrow
dkRingDotAbove["8"] := "{u+2191}"          ; (↑) upwards arrow
dkRingDotAbove["9"] := "{u+2197}"          ; (↗) north east arrow
dkRingDotAbove["0"] := "{u+2194}"          ; (↔) left right arrow
dkRingDotAbove["!"] := "{u+2199}"          ; (↙) south west arrow
dkRingDotAbove["@"] := "{u+2193}"          ; (↓) downwards arrow
dkRingDotAbove["#"] := "{u+2198}"          ; (↘) south east arrow
dkRingDotAbove["$"] := "{u+2190}"          ; (←) leftwards arrow
dkRingDotAbove["%"] := "{u+2195}"          ; (↕) up down arrow
dkRingDotAbove["^"] := "{u+2192}"          ; (→) rightwards arrow
dkRingDotAbove["&"] := "{u+2196}"          ; (↖) north west arrow
dkRingDotAbove["*"] := "{u+2191}"          ; (↑) upwards arrow
dkRingDotAbove["("] := "{u+2197}"          ; (↗) north east arrow
dkRingDotAbove[")"] := "{u+2194}"          ; (↔) left right arrow
dkRingDotAbove["-"] := "{u+21b2}"          ; (↲) downwards arrow with tip leftwards
dkRingDotAbove["_"] := "{u+21b0}"          ; (↰) upwards arrow with tip leftwards
dkRingDotAbove["="] := "{u+21b3}"          ; (↳) downwards arrow with tip rightwards
dkRingDotAbove["+"] := "{u+21b1}"          ; (↱) upwards arrow with tip rightwards
dkRingDotAbove["["] := "{u+21c4}"          ; (⇄) rightwards arrow over leftwards arrow
dkRingDotAbove["{"] := "{u+21c6}"          ; (⇆) leftwards arrow over rightwards arrow
dkRingDotAbove["]"] := "{u+21c5}"          ; (⇅) upwards arrow leftwards of downwards arrow
dkRingDotAbove["}"] := "{u+21f5}"          ; (⇵) downwards arrow leftwards of upwards arrow
dkRingDotAbove["/"] := "{u+21a8}"          ; (↨) up down arrow with base
dkRingDotAbove[" "] := "{u+02d9}"          ; (˙) dot above


; Dead Key :  Macron/Stroke

global dkMacronStroke := Map()
dkMacronStroke["a"] := "{u+0101}"          ; (ā) a with macron
dkMacronStroke["A"] := "{u+0100}"          ; (Ā) A with macron
dkMacronStroke[chr(0x00e6)] := "{u+01e3}"  ; (æ -> ǣ) ae with macron
dkMacronStroke[chr(0x00c6)] := "{u+01e2}"  ; (Æ -> Ǣ) AE with macron
dkMacronStroke["b"] := "{u+0180}"          ; (ƀ) b with stroke
dkMacronStroke["B"] := "{u+0243}"          ; (Ƀ) B with stroke
dkMacronStroke["d"] := "{u+0111}"          ; (đ) d with stroke
dkMacronStroke["D"] := "{u+0110}"          ; (Đ) D with stroke
dkMacronStroke["e"] := "{u+0113}"          ; (ē) e with macron
dkMacronStroke["E"] := "{u+0112}"          ; (Ē) E with macron
dkMacronStroke["g"] := "{u+01e5}"          ; (ǥ) g with stroke (Skolt Sami)
dkMacronStroke["G"] := "{u+01e4}"          ; (Ǥ) G with stroke (Skolt Sami)
dkMacronStroke[chr(0x00e9)] := "{u+1e21}"  ; (é -> ḡ) g with macron
dkMacronStroke[chr(0x00c9)] := "{u+1e20}"  ; (É -> Ḡ) G with macron
dkMacronStroke["h"] := "{u+0127}"          ; (ħ) h with stroke (Maltese)
dkMacronStroke["H"] := "{u+0126}"          ; (Ħ) H with stroke (Maltese)
dkMacronStroke["i"] := "{u+012b}"          ; (ī) i with macron
dkMacronStroke["I"] := "{u+012a}"          ; (Ī) I with macron
dkMacronStroke[chr(0x00ef)] := "{u+0268}"  ; (ï -> ɨ) i with stroke
dkMacronStroke[chr(0x00cf)] := "{u+0197}"  ; (Ï -> Ɨ) I with stroke
dkMacronStroke["j"] := "{u+0249}"          ; (ɉ) j with stroke
dkMacronStroke["J"] := "{u+0248}"          ; (Ɉ) J with stroke
dkMacronStroke["l"] := "{u+0142}"          ; (ł) l with stroke
dkMacronStroke["L"] := "{u+0141}"          ; (Ł) L with stroke
dkMacronStroke[chr(0x00f8)] := "{u+1e3b}"  ; (ø -> ḻ) l with line below
dkMacronStroke[chr(0x00d8)] := "{u+1e3a}"  ; (Ø -> Ḻ) L with line below
dkMacronStroke["o"] := "{u+014d}"          ; (ō) o with macron
dkMacronStroke["O"] := "{u+014c}"          ; (Ō) O with macron
dkMacronStroke[chr(0x00f6)] := "{u+01ed}"  ; (ö -> ǭ) o with ogonek and macron
dkMacronStroke[chr(0x00d6)] := "{u+01ec}"  ; (Ö -> Ǭ) O with ogonek and macron
dkMacronStroke["p"] := "{u+1d7d}"          ; (ᵽ) p with stroke
dkMacronStroke["P"] := "{u+2c63}"          ; (Ᵽ) P with stroke
dkMacronStroke["r"] := "{u+024d}"          ; (ɍ) r with stroke
dkMacronStroke["R"] := "{u+024c}"          ; (Ɍ) R with stroke
dkMacronStroke["t"] := "{u+0167}"          ; (ŧ) t with stroke
dkMacronStroke["T"] := "{u+0166}"          ; (Ŧ) T with stroke
dkMacronStroke["u"] := "{u+016b}"          ; (ū) u with macron
dkMacronStroke["U"] := "{u+016a}"          ; (Ū) U with macron
dkMacronStroke[chr(0x00fc)] := "{u+0289}"  ; (ü -> ʉ) u with bar
dkMacronStroke[chr(0x00dc)] := "{u+0244}"  ; (Ü -> Ʉ) U with bar
dkMacronStroke["y"] := "{u+0233}"          ; (ȳ) y with macron
dkMacronStroke["Y"] := "{u+0232}"          ; (Ȳ) Y with macron
dkMacronStroke[chr(0x00ff)] := "{u+024f}"  ; (ÿ -> ɏ) y with stroke
dkMacronStroke[chr(0x0178)] := "{u+024c}"  ; (Ÿ -> Ɏ) Y with stroke
dkMacronStroke["z"] := "{u+01b6}"          ; (ƶ) z with stroke
dkMacronStroke["Z"] := "{u+01b5}"          ; (Ƶ) Z with stroke
dkMacronStroke[" "] := "{u+00af}"          ; (¯) macron


; Dead Key :  Cedilla/Ogonek

global dkCedillaOgonek := Map()
dkCedillaOgonek["a"] := "{u+0105}"          ; (ą) a with ogonek
dkCedillaOgonek["A"] := "{u+0104}"          ; (Ą) A with ogonek
dkCedillaOgonek["c"] := "{u+00e7}"          ; (ç) c with cedilla
dkCedillaOgonek["C"] := "{u+00c7}"          ; (Ç) C with cedilla
dkCedillaOgonek["d"] := "{u+1e11}"          ; (ḑ) d with cedilla
dkCedillaOgonek["D"] := "{u+1e10}"          ; (Ḑ) D with cedilla
dkCedillaOgonek["e"] := "{u+0119}"          ; (ę) e with ogonek
dkCedillaOgonek["E"] := "{u+0118}"          ; (Ę) E with ogonek
dkCedillaOgonek[chr(0x00eb)] := "{u+0229}"  ; (ë -> ȩ) e with cedilla
dkCedillaOgonek[chr(0x00cb)] := "{u+0228}"  ; (Ë -> Ȩ) E with cedilla
dkCedillaOgonek["g"] := "{u+0123}"          ; (ģ) g with cedilla
dkCedillaOgonek["G"] := "{u+0122}"          ; (Ģ) G with cedilla
dkCedillaOgonek["h"] := "{u+1e29}"          ; (ḩ) h with cedilla
dkCedillaOgonek["H"] := "{u+1e28}"          ; (Ḩ) H with cedilla
dkCedillaOgonek["i"] := "{u+012f}"          ; (į) i with ogonek
dkCedillaOgonek["I"] := "{u+012e}"          ; (Į) I with ogonek
dkCedillaOgonek["k"] := "{u+0137}"          ; (ķ) k with cedilla
dkCedillaOgonek["K"] := "{u+0136}"          ; (Ķ) K with cedilla
dkCedillaOgonek["l"] := "{u+013c}"          ; (ļ) l with cedilla
dkCedillaOgonek["L"] := "{u+013b}"          ; (Ļ) L with cedilla
dkCedillaOgonek["n"] := "{u+0146}"          ; (ņ) n with cedilla
dkCedillaOgonek["N"] := "{u+0145}"          ; (Ņ) N with cedilla
dkCedillaOgonek["o"] := "{u+01eb}"          ; (ǫ) o with ogonek
dkCedillaOgonek["O"] := "{u+01ea}"          ; (Ǫ) O with ogonek
dkCedillaOgonek[chr(0x00f6)] := "{u+01ed}"  ; (ö -> ǭ) o with ogonek and macron
dkCedillaOgonek[chr(0x00d6)] := "{u+01ec}"  ; (Ö -> Ǭ) O with ogonek and macron
dkCedillaOgonek["r"] := "{u+0157}"          ; (ŗ) r with cedilla
dkCedillaOgonek["R"] := "{u+0156}"          ; (Ŗ) R with cedilla
dkCedillaOgonek["s"] := "{u+015f}"          ; (ş) s with cedilla
dkCedillaOgonek["S"] := "{u+015e}"          ; (Ş) S with cedilla
dkCedillaOgonek["t"] := "{u+0163}"          ; (ţ) t with cedilla
dkCedillaOgonek["T"] := "{u+0162}"          ; (Ţ) T with cedilla
dkCedillaOgonek["u"] := "{u+0173}"          ; (ų) u with ogonek
dkCedillaOgonek["U"] := "{u+0172}"          ; (Ų) U with ogonek
dkCedillaOgonek["w"] := "{u+20a9}"          ; (₩) South Korean won
dkCedillaOgonek["W"] := "{u+20a9}"          ; (₩) South Korean won
dkCedillaOgonek["1"] := "{u+2013}"          ; (–) en dash
dkCedillaOgonek["2"] := "{u+2014}"          ; (—) em dash
dkCedillaOgonek["3"] := "{u+2015}"          ; (―) horizontal bar
dkCedillaOgonek["4"] := "{u+2010}"          ; (‐) hyphen
dkCedillaOgonek["9"] := "{u+2012}"          ; (‒) figure dash
dkCedillaOgonek["0"] := "{u+00ad}"          ; (­) soft hyphen
dkCedillaOgonek["!"] := "{u+2013}"          ; (–) en dash
dkCedillaOgonek["@"] := "{u+2014}"          ; (—) em dash
dkCedillaOgonek["#"] := "{u+2015}"          ; (―) horizontal bar
dkCedillaOgonek["$"] := "{u+2010}"          ; (‐) hyphen
dkCedillaOgonek["("] := "{u+2012}"          ; (‒) figure dash
dkCedillaOgonek[")"] := "{u+00ad}"          ; (­) soft hyphen
dkCedillaOgonek["-"] := "{u+2011}"          ; (‑) non-breaking hyphen
dkCedillaOgonek["."] := "{u+02db}"          ; (˛) ogonek
dkCedillaOgonek[" "] := "{u+00b8}"          ; (¸) cedilla


; Dead Key :  Breve/Special

global dkBreveSpecial := Map()
dkBreveSpecial["a"] := "{u+0103}"          ; (ă) a with breve
dkBreveSpecial["A"] := "{u+0102}"          ; (Ă) A with breve
dkBreveSpecial["d"] := "{u+0256}"          ; (ɖ) small letter d with tail
dkBreveSpecial["D"] := "{u+0189}"          ; (Ɖ) capital letter African D
dkBreveSpecial["e"] := "{u+0115}"          ; (ĕ) e with breve
dkBreveSpecial["E"] := "{u+0114}"          ; (Ĕ) E with breve
dkBreveSpecial[chr(0x00eb)] := "{u+01dd}"  ; (ë -> ǝ) small turned e
dkBreveSpecial[chr(0x00cb)] := "{u+018e}"  ; (Ë -> Ǝ) capital reversed E
dkBreveSpecial["f"] := "{u+0259}"          ; (ə) small letter schwa (Azerbaijani)
dkBreveSpecial["F"] := "{u+018f}"          ; (Ə) capital letter schwa (Azerbaijani)
dkBreveSpecial["g"] := "{u+011f}"          ; (ğ) g with breve
dkBreveSpecial["G"] := "{u+011e}"          ; (Ğ) G with breve
dkBreveSpecial[chr(0x00e9)] := "{u+ab36}"  ; (é -> ꬶ) cross-tailed g
dkBreveSpecial["h"] := "{u+0263}"          ; (ɣ) latin small gamma
dkBreveSpecial["H"] := "{u+0194}"          ; (Ɣ) latin capital gamma
dkBreveSpecial["i"] := "{u+012d}"          ; (ĭ) i with breve
dkBreveSpecial["I"] := "{u+012c}"          ; (Ĭ) I with breve
dkBreveSpecial["j"] := "{u+0133}"          ; (ĳ) ligature ij
dkBreveSpecial["J"] := "{u+0132}"          ; (Ĳ) ligature IJ
dkBreveSpecial["k"] := "{u+0138}"          ; (ĸ) small letter kra
dkBreveSpecial["n"] := "{u+014b}"          ; (ŋ) small letter eng(ma)
dkBreveSpecial["N"] := "{u+014a}"          ; (Ŋ) capital letter eng(ma)
dkBreveSpecial["o"] := "{u+014f}"          ; (ŏ) o with breve
dkBreveSpecial["O"] := "{u+014e}"          ; (Ŏ) O with breve
dkBreveSpecial[chr(0x00f6)] := "{u+0254}"  ; (ö -> ɔ) small open o
dkBreveSpecial[chr(0x00d6)] := "{u+0186}"  ; (Ö -> Ɔ) capital open O
dkBreveSpecial["s"] := "{u+0219}"          ; (ș) s with comma below (Romanian)
dkBreveSpecial["S"] := "{u+0218}"          ; (Ș) S with comma below (Romanian)
dkBreveSpecial["t"] := "{u+021b}"          ; (ț) t with comma below (Romanian)
dkBreveSpecial["T"] := "{u+021a}"          ; (Ț) T with comma below (Romanian)
dkBreveSpecial["u"] := "{u+016d}"          ; (ŭ) u with breve
dkBreveSpecial["U"] := "{u+016c}"          ; (Ŭ) U with breve
dkBreveSpecial["v"] := "{u+028a}"          ; (ʊ) latin small letter upsilon
dkBreveSpecial["V"] := "{u+01b1}"          ; (Ʊ) latin capital letter upsilon
dkBreveSpecial["w"] := "{u+01bf}"          ; (ƿ) small letter wynn
dkBreveSpecial["W"] := "{u+01f7}"          ; (Ƿ) capital letter wynn
dkBreveSpecial["y"] := "{u+021d}"          ; (ȝ) small letter yogh
dkBreveSpecial["Y"] := "{u+021c}"          ; (Ȝ) capital letter yogh
dkBreveSpecial["#"] := "{u+0292}"          ; (ʒ) small letter ezh
dkBreveSpecial["3"] := "{u+01b7}"          ; (Ʒ) capital letter ezh
dkBreveSpecial[" "] := "{u+02d8}"          ; (˘) breve


; Dead Key :  Acute Accent

global dkAcuteAccent := Map()
dkAcuteAccent["a"] := "{u+00e1}"          ; (á) a with acute
dkAcuteAccent["A"] := "{u+00c1}"          ; (Á) A with acute
dkAcuteAccent["b"] := "{u+0253}"          ; (ɓ) b with hook
dkAcuteAccent["B"] := "{u+0181}"          ; (Ɓ) B with hook
dkAcuteAccent["c"] := "{u+0107}"          ; (ć) c with acute
dkAcuteAccent["C"] := "{u+0106}"          ; (Ć) C with acute
dkAcuteAccent[chr(0x00e7)] := "{u+1e09}"  ; (ç -> ḉ) c with cedilla and acute
dkAcuteAccent[chr(0x00c7)] := "{u+1e08}"  ; (Ç -> Ḉ) C with cedilla and acute
dkAcuteAccent["d"] := "{u+0257}"          ; (ɗ) d with hook
dkAcuteAccent["D"] := "{u+018a}"          ; (Ɗ) D with hook
dkAcuteAccent["e"] := "{u+00e9}"          ; (é) e with acute
dkAcuteAccent["E"] := "{u+00c9}"          ; (É) E with acute
dkAcuteAccent["f"] := "{u+0192}"          ; (ƒ) f with hook
dkAcuteAccent["F"] := "{u+0191}"          ; (Ƒ) F with hook
dkAcuteAccent["g"] := "{u+01f5}"          ; (ǵ) g with acute
dkAcuteAccent["G"] := "{u+01f4}"          ; (Ǵ) G with acute
dkAcuteAccent["h"] := "{u+0266}"          ; (ɦ) h with hook
dkAcuteAccent["H"] := "{u+a7aa}"          ; (Ɦ) H with hook
dkAcuteAccent["i"] := "{u+00ed}"          ; (í) i with acute
dkAcuteAccent["I"] := "{u+00cd}"          ; (Í) I with acute
dkAcuteAccent["j"] := "{u+0133}"          ; (ĳ) ligature ij
dkAcuteAccent["J"] := "{u+0132}"          ; (Ĳ) ligature IJ
dkAcuteAccent["k"] := "{u+0199}"          ; (ƙ) k with hook
dkAcuteAccent["K"] := "{u+0198}"          ; (Ƙ) K with hook
dkAcuteAccent["l"] := "{u+013a}"          ; (ĺ) l with acute
dkAcuteAccent["L"] := "{u+0139}"          ; (Ĺ) L with acute
dkAcuteAccent["m"] := "{u+1e3f}"          ; (ḿ) m with acute
dkAcuteAccent["M"] := "{u+1e3e}"          ; (Ḿ) M with acute
dkAcuteAccent["n"] := "{u+0144}"          ; (ń) n with acute
dkAcuteAccent["N"] := "{u+0143}"          ; (Ń) N with acute
dkAcuteAccent["o"] := "{u+00f3}"          ; (ó) o with acute
dkAcuteAccent["O"] := "{u+00d3}"          ; (Ó) O with acute
dkAcuteAccent[chr(0x00f6)] := "{u+0151}"  ; (ö -> ő) o with double acute
dkAcuteAccent[chr(0x00d6)] := "{u+0150}"  ; (Ö -> Ő) O with double acute
dkAcuteAccent["p"] := "{u+01a5}"          ; (ƥ) p with hook
dkAcuteAccent["P"] := "{u+01a4}"          ; (Ƥ) P with hook
dkAcuteAccent["q"] := "{u+024b}"          ; (ɋ) q with hook tail
dkAcuteAccent["Q"] := "{u+024a}"          ; (Ɋ) Q with hook tail
dkAcuteAccent["r"] := "{u+0155}"          ; (ŕ) r with acute
dkAcuteAccent["R"] := "{u+0154}"          ; (Ŕ) R with acute
dkAcuteAccent["s"] := "{u+015b}"          ; (ś) s with acute
dkAcuteAccent["S"] := "{u+015a}"          ; (Ś) S with acute
dkAcuteAccent["t"] := "{u+01ad}"          ; (ƭ) t with hook
dkAcuteAccent["T"] := "{u+01ac}"          ; (Ƭ) T with hook
dkAcuteAccent["u"] := "{u+00fa}"          ; (ú) u with acute
dkAcuteAccent["U"] := "{u+00da}"          ; (Ú) U with acute
dkAcuteAccent[chr(0x00fc)] := "{u+0171}"  ; (ü -> ű) u with double acute
dkAcuteAccent[chr(0x00dc)] := "{u+0170}"  ; (Ü -> Ű) U with double acute
dkAcuteAccent["v"] := "{u+028b}"          ; (ʋ) v with hook
dkAcuteAccent["V"] := "{u+01b2}"          ; (Ʋ) V with hook
dkAcuteAccent["w"] := "{u+1e83}"          ; (ẃ) w with acute
dkAcuteAccent["W"] := "{u+1e82}"          ; (Ẃ) W with acute
dkAcuteAccent["y"] := "{u+00fd}"          ; (ý) y with acute
dkAcuteAccent["Y"] := "{u+00dd}"          ; (Ý) Y with acute
dkAcuteAccent["z"] := "{u+017a}"          ; (ź) z with acute
dkAcuteAccent["Z"] := "{u+0179}"          ; (Ź) Z with acute
dkAcuteAccent[chr(0x00e5)] := "{u+01fb}"  ; (å -> ǻ) a with ring above and acute
dkAcuteAccent[chr(0x00c5)] := "{u+01fa}"  ; (Å -> Ǻ) A with ring above and acute
dkAcuteAccent[chr(0x00e6)] := "{u+01fd}"  ; (æ -> ǽ) ae with acute
dkAcuteAccent[chr(0x00c6)] := "{u+01fc}"  ; (Æ -> Ǽ) AE with acute
dkAcuteAccent[chr(0x00f8)] := "{u+01ff}"  ; (ø -> ǿ) o with stroke and acute
dkAcuteAccent[chr(0x00d8)] := "{u+01fe}"  ; (Ø -> Ǿ) O with stroke and acute
dkAcuteAccent["2"] := "{u+266b}"          ; (♫) beamed eighth notes
dkAcuteAccent["3"] := "{u+2042}"          ; (⁂) asterism
dkAcuteAccent["4"] := "{u+2605}"          ; (★) black star
dkAcuteAccent["5"] := "{u+2606}"          ; (☆) white star
dkAcuteAccent["6"] := "{u+273d}"          ; (✽) heavy teardrop-spoked asterisk
dkAcuteAccent["7"] := "{u+273b}"          ; (✻) teardrop-spoked asterisk
dkAcuteAccent["8"] := "{u+266a}"          ; (♪) eighth note
dkAcuteAccent["@"] := "{u+266b}"          ; (♫) beamed eighth notes
dkAcuteAccent["#"] := "{u+2042}"          ; (⁂) asterism
dkAcuteAccent["$"] := "{u+2605}"          ; (★) black star
dkAcuteAccent["%"] := "{u+2606}"          ; (☆) white star
dkAcuteAccent["^"] := "{u+273d}"          ; (✽) heavy teardrop-spoked asterisk
dkAcuteAccent["&"] := "{u+273b}"          ; (✻) teardrop-spoked asterisk
dkAcuteAccent["*"] := "{u+266a}"          ; (♪) eighth note
dkAcuteAccent[" "] := "{u+00b4}"          ; (´) acute accent


; Dead Key :  Diaeresis

global dkDiaeresis := Map()
dkDiaeresis["a"] := "{u+00e4}"  ; (ä) a with diaeresis
dkDiaeresis["A"] := "{u+00c4}"  ; (Ä) A with diaeresis
dkDiaeresis["e"] := "{u+00eb}"  ; (ë) e with diaeresis
dkDiaeresis["E"] := "{u+00cb}"  ; (Ë) E with diaeresis
dkDiaeresis["h"] := "{u+1e27}"  ; (ḧ) h with diaeresis
dkDiaeresis["H"] := "{u+1e26}"  ; (Ḧ) H with diaeresis
dkDiaeresis["i"] := "{u+00ef}"  ; (ï) i with diaeresis
dkDiaeresis["I"] := "{u+00cf}"  ; (Ï) I with diaeresis
dkDiaeresis["o"] := "{u+00f6}"  ; (ö) o with diaeresis
dkDiaeresis["O"] := "{u+00d6}"  ; (Ö) O with diaeresis
dkDiaeresis["s"] := "{u+00df}"  ; (ß) small sharp s (Eszett)
dkDiaeresis["S"] := "{u+1e9e}"  ; (ẞ) capital sharp S (capital Eszett)
dkDiaeresis["t"] := "{u+1e97}"  ; (ẗ) t with diaeresis
dkDiaeresis["u"] := "{u+00fc}"  ; (ü) u with diaeresis
dkDiaeresis["U"] := "{u+00dc}"  ; (Ü) U with diaeresis
dkDiaeresis["w"] := "{u+1e85}"  ; (ẅ) w with diaeresis
dkDiaeresis["W"] := "{u+1e84}"  ; (Ẅ) W with diaeresis
dkDiaeresis["x"] := "{u+1e8d}"  ; (ẍ) x with diaeresis
dkDiaeresis["X"] := "{u+1e8c}"  ; (Ẍ) X with diaeresis
dkDiaeresis["y"] := "{u+00ff}"  ; (ÿ) y with diaeresis
dkDiaeresis["Y"] := "{u+0178}"  ; (Ÿ) Y with diaeresis
dkDiaeresis[" "] := "{u+00a8}"  ; (¨) diaeresis


; Dead Key :  Grave Accent

global dkGraveAccent := Map()
dkGraveAccent["a"] := "{u+00e0}"  ; (à) a with grave
dkGraveAccent["A"] := "{u+00c0}"  ; (À) A with grave
dkGraveAccent["e"] := "{u+00e8}"  ; (è) e with grave
dkGraveAccent["E"] := "{u+00c8}"  ; (È) E with grave
dkGraveAccent["i"] := "{u+00ec}"  ; (ì) i with grave
dkGraveAccent["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGraveAccent["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGraveAccent["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGraveAccent["o"] := "{u+00f2}"  ; (ò) o with grave
dkGraveAccent["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGraveAccent["u"] := "{u+00f9}"  ; (ù) u with grave
dkGraveAccent["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGraveAccent["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGraveAccent["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGraveAccent["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGraveAccent["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGraveAccent[chr(0x00e4)] := "{u+20b3}"  ; (ä -> ₳) Argentine austral
dkGraveAccent[chr(0x00c4)] := "{u+20b3}"  ; (Ä -> ₳) Argentine austral
dkGraveAccent["b"] := "{u+20bf}"          ; (₿) bitcoin
dkGraveAccent["B"] := "{u+20bf}"          ; (₿) bitcoin
dkGraveAccent["c"] := "{u+20a1}"          ; (₡) Costa Rican colón
dkGraveAccent["C"] := "{u+20b5}"          ; (₵) Ghanaian cedi
dkGraveAccent[chr(0x00e7)] := "{u+20a2}"  ; (ç -> ₢) Brazilian cruzeiro
dkGraveAccent[chr(0x00c7)] := "{u+20a2}"  ; (Ç -> ₢) Brazilian cruzeiro
dkGraveAccent["d"] := "{u+20ab}"          ; (₫) Vietnamese dong
dkGraveAccent["D"] := "{u+20af}"          ; (₯) Greek drachma
dkGraveAccent["f"] := "{u+20a3}"          ; (₣) French franc
dkGraveAccent["F"] := "{u+20a3}"          ; (₣) French franc
dkGraveAccent["g"] := "{u+20b2}"          ; (₲) Paraguayan guaraní
dkGraveAccent["G"] := "{u+20b2}"          ; (₲) Paraguayan guaraní
dkGraveAccent["h"] := "{u+20b4}"          ; (₴) Ukrainian hryvnia
dkGraveAccent["H"] := "{u+20b4}"          ; (₴) Ukrainian hryvnia
dkGraveAccent["k"] := "{u+20ad}"          ; (₭) Laotian kip
dkGraveAccent["K"] := "{u+20ad}"          ; (₭) Laotian kip
dkGraveAccent["l"] := "{u+20ba}"          ; (₺) Turkish lira
dkGraveAccent["L"] := "{u+20be}"          ; (₾) Georgian lari
dkGraveAccent[chr(0x00f8)] := "{u+20a4}"  ; (ø -> ₤) lira
dkGraveAccent[chr(0x00d8)] := "{u+20b6}"  ; (Ø -> ₶) livre tournois
dkGraveAccent["m"] := "{u+20bc}"          ; (₼) Azerbaijani manat
dkGraveAccent["M"] := "{u+20a5}"          ; (₥) mill sign
dkGraveAccent[chr(0x00f1)] := "{u+20a6}"  ; (ñ -> ₦) Nigerian naira
dkGraveAccent[chr(0x00d1)] := "{u+20a6}"  ; (Ñ -> ₦) Nigerian naira
dkGraveAccent["p"] := "{u+20b1}"          ; (₱) Philippine peso
dkGraveAccent["P"] := "{u+20b1}"          ; (₱) Philippine peso
dkGraveAccent["r"] := "{u+20b9}"          ; (₹) Indian rupee
dkGraveAccent["R"] := "{u+20bd}"          ; (₽) Russian ruble
dkGraveAccent["s"] := "{u+20aa}"          ; (₪) Israeli new shekel
dkGraveAccent["S"] := "{u+20b7}"          ; (₷) spesmilo
dkGraveAccent["t"] := "{u+20ae}"          ; (₮) Mongolian tögrög (tugrik)
dkGraveAccent["T"] := "{u+20b8}"          ; (₸) Kazakh tenge
dkGraveAccent[chr(0x00e5)] := "{u+20a9}"  ; (å -> ₩) South Korean won
dkGraveAccent[chr(0x00c5)] := "{u+20a9}"  ; (Å -> ₩) South Korean won
dkGraveAccent["1"] := "{u+2002}"  ; en space
dkGraveAccent["2"] := "{u+2003}"  ; em space
dkGraveAccent["3"] := "{u+2004}"  ; three-per-em space
dkGraveAccent["4"] := "{u+2005}"  ; four-per-em space
dkGraveAccent["5"] := "{u+2008}"  ; punctuation space
dkGraveAccent["6"] := "{u+2006}"  ; six-per-em space
dkGraveAccent["7"] := "{u+2009}"  ; thin space
dkGraveAccent["8"] := "{u+200a}"  ; hair space
dkGraveAccent["9"] := "{u+2007}"  ; figure space
dkGraveAccent["0"] := "{u+200b}"  ; zero-width space
dkGraveAccent["!"] := "{u+2002}"  ; en space
dkGraveAccent["@"] := "{u+2003}"  ; em space
dkGraveAccent["#"] := "{u+2004}"  ; three-per-em space
dkGraveAccent["$"] := "{u+2005}"  ; four-per-em space
dkGraveAccent["%"] := "{u+2008}"  ; punctuation space
dkGraveAccent["^"] := "{u+2006}"  ; six-per-em space
dkGraveAccent["&"] := "{u+2009}"  ; thin space
dkGraveAccent["*"] := "{u+200a}"  ; hair space
dkGraveAccent["("] := "{u+2007}"  ; figure space
dkGraveAccent[")"] := "{u+200b}"  ; zero-width space
dkGraveAccent["-"] := "{u+00a0}"  ; non-breaking space
dkGraveAccent["="] := "{u+202f}"  ; narrow no-break space
dkGraveAccent[" "] := "`` "        ; grave accent


; Dead Key :  Tilde

global dkTilde := Map()
dkTilde["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde["n"] := "{u+00f1}"  ; (ñ) n with tilde
dkTilde["N"] := "{u+00d1}"  ; (Ñ) N with tilde
dkTilde["o"] := "{u+00f5}"  ; (õ) o with tilde
dkTilde["O"] := "{u+00d5}"  ; (Õ) O with tilde
dkTilde["u"] := "{u+0169}"  ; (ũ) u with tilde
dkTilde["U"] := "{u+0168}"  ; (Ũ) U with tilde
dkTilde["v"] := "{u+1e7d}"  ; (ṽ) v with tilde
dkTilde["V"] := "{u+1e7c}"  ; (Ṽ) V with tilde
dkTilde["y"] := "{u+1ef9}"  ; (ỹ) y with tilde
dkTilde["Y"] := "{u+1ef8}"  ; (Ỹ) Y with tilde
dkTilde["1"] := "{u+2000}"  ;     en quad
dkTilde["2"] := "{u+2001}"  ;     em quad
dkTilde["!"] := "{u+2000}"  ;     en quad
dkTilde["@"] := "{u+2001}"  ;     em quad
dkTilde[" "] := "~ "         ;     tilde


; Dead Key :  Not Sign

global dkNotSign := Map()
dkNotSign["a"] := "{u+00aa}"          ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkNotSign["A"] := "{u+00aa}"          ; (ª) feminine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkNotSign[chr(0x00e4)] := "{u+214d}"  ; (ä -> ⅍) aktieselskab
dkNotSign[chr(0x00c4)] := "{u+214d}"  ; (Ä -> ⅍) aktieselskab
dkNotSign["b"] := "{u+2610}"          ; (☐) ballot box
dkNotSign["B"] := "{u+2612}"          ; (☒) ballot box with x
dkNotSign["c"] := "{u+00a9}"          ; (©) copyright sign
dkNotSign["C"] := "{u+00a4}"          ; (¤) currency sign
dkNotSign[chr(0x00e7)] := "{u+2105}"  ; (ç -> ℅) care of
dkNotSign[chr(0x00c7)] := "{u+2105}"  ; (Ç -> ℅) care of
dkNotSign["d"] := "{u+2020}"          ; (†) dagger
dkNotSign["D"] := "{u+2021}"          ; (‡) double dagger
dkNotSign["e"] := "{u+2026}"          ; (…) horizontal ellipsis
dkNotSign["E"] := "{u+212e}"          ; (℮) estimated symbol
dkNotSign["f"] := "{u+2640}"          ; (♀) Venus symbol (female)
dkNotSign["F"] := "{u+2640}"          ; (♀) Venus symbol (female)
dkNotSign["h"] := "{u+2661}"          ; (♡) white heart suit
dkNotSign["H"] := "{u+2665}"          ; (♥) black heart suit
dkNotSign["l"] := "{u+2113}"          ; (ℓ) script small l
dkNotSign["L"] := "{u+2113}"          ; (ℓ) script small l
dkNotSign["m"] := "{u+2642}"          ; (♂) Mars symbol (male)
dkNotSign["M"] := "{u+2642}"          ; (♂) Mars symbol (male)
dkNotSign["n"] := "{u+00ac}"          ; (¬) not sign
dkNotSign["N"] := "{u+00ac}"          ; (¬) not sign
dkNotSign["o"] := "{u+00ba}"          ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkNotSign["O"] := "{u+00ba}"          ; (º) masculine ordinal indicator (Spanish, Portuguese, Italian, Galician)
dkNotSign[chr(0x00f6)] := "{u+2126}"  ; (ö -> Ω) ohm sign (backwards compatibility)
dkNotSign[chr(0x00d6)] := "{u+2126}"  ; (Ö -> Ω) ohm sign (backwards compatibility)
dkNotSign["p"] := "{u+00b6}"          ; (¶) pilcrow sign
dkNotSign["P"] := "{u+2117}"          ; (℗) sound recording copyright
dkNotSign["q"] := "{u+201a}"          ; (‚) single low-9 quotation mark
dkNotSign["Q"] := "{u+201a}"          ; (‚) single low-9 quotation mark
dkNotSign["r"] := "{u+00ae}"          ; (®) registered sign
dkNotSign["R"] := "{u+00ae}"          ; (®) registered sign
dkNotSign["s"] := "{u+00a7}"          ; (§) section sign
dkNotSign["S"] := "{u+2120}"          ; (℠) service mark
dkNotSign["t"] := "{u+2122}"          ; (™) trademark symbol
dkNotSign["T"] := "{u+2122}"          ; (™) trademark symbol
dkNotSign["v"] := "{u+2713}"          ; (✓) check mark
dkNotSign["V"] := "{u+2714}"          ; (✔) heavy check mark
dkNotSign["w"] := "{u+2611}"          ; (☑) ballot box with check
dkNotSign["W"] := "{u+2619}"          ; (☙) reversed rotated floral heart bullet
dkNotSign["x"] := "{u+2717}"          ; (✗) ballot x
dkNotSign["X"] := "{u+2718}"          ; (✘) heavy ballot x
dkNotSign["y"] := "{u+263a}"          ; (☺) white smiling face
dkNotSign["Y"] := "{u+263b}"          ; (☻) black smiling face
dkNotSign["1"] := "{u+2116}"          ; (№) numero sign
dkNotSign["2"] := "{u+00bd}"          ; (½) vulgar fraction 1/2
dkNotSign["3"] := "{u+2153}"          ; (⅓) vulgar fraction 1/3
dkNotSign["4"] := "{u+00bc}"          ; (¼) vulgar fraction 1/4
dkNotSign["5"] := "{u+2154}"          ; (⅔) vulgar fraction 2/3
dkNotSign["6"] := "{u+00be}"          ; (¾) vulgar fraction 3/4
dkNotSign["7"] := "{u+215b}"          ; (⅛) vulgar fraction 1/8
dkNotSign["8"] := "{u+215c}"          ; (⅜) vulgar fraction 3/8
dkNotSign["9"] := "{u+215d}"          ; (⅝) vulgar fraction 5/8
dkNotSign["0"] := "{u+215e}"          ; (⅞) vulgar fraction 7/8
dkNotSign["!"] := "{u+2116}"          ; (№) numero sign
dkNotSign["@"] := "{u+00bd}"          ; (½) vulgar fraction 1/2
dkNotSign["#"] := "{u+2153}"          ; (⅓) vulgar fraction 1/3
dkNotSign["$"] := "{u+00bc}"          ; (¼) vulgar fraction 1/4
dkNotSign["%"] := "{u+2154}"          ; (⅔) vulgar fraction 2/3
dkNotSign["^"] := "{u+00be}"          ; (¾) vulgar fraction 3/4
dkNotSign["&"] := "{u+215b}"          ; (⅛) vulgar fraction 1/8
dkNotSign["*"] := "{u+215c}"          ; (⅜) vulgar fraction 3/8
dkNotSign["("] := "{u+215d}"          ; (⅝) vulgar fraction 5/8
dkNotSign[")"] := "{u+215e}"          ; (⅞) vulgar fraction 7/8
dkNotSign["."] := "{u+2022}"          ; (•) bullet
dkNotSign[","] := "{u+25e6}"          ; (◦) white bullet
dkNotSign["-"] := "{u+2043}"          ; (⁃) hyphen bullet
dkNotSign["="] := "{u+2023}"          ; (‣) triangular bullet
dkNotSign["/"] := "{u+203c}"          ; (‼) double exclamation mark
dkNotSign["?"] := "{u+203d}"          ; (‽) interrobang
dkNotSign[chr(0x00bf)] := "{u+2e18}"  ; (¿ -> ⸘) inverted interrobang
dkNotSign[chr(0x2026)] := "{u+2e2e}"  ; (… -> ⸮) reversed question mark
dkNotSign["\"] := "{u+205e}"          ; (⁞) vertical four dots
dkNotSign["|"] := "{u+205e}"          ; (⁞) vertical four dots
dkNotSign[" "] := "{u+00ac}"          ; (¬) not sign


; Dead Key :  Broken Bar

global dkBrokenBar := Map()
dkBrokenBar["a"] := "{u+0251}"          ; (ɑ) latin small letter alpha
dkBrokenBar["A"] := "{u+2c6d}"          ; (Ɑ) latin capital letter alpha
dkBrokenBar[chr(0x00e4)] := "{u+0252}"  ; (ä -> ɒ) latin small letter turned alpha
dkBrokenBar[chr(0x00c4)] := "{u+2c70}"  ; (Ä -> Ɒ) latin capital letter turned alpha
dkBrokenBar["c"] := "{u+0188}"          ; (ƈ) c with hook
dkBrokenBar["C"] := "{u+0187}"          ; (Ƈ) C with hook
dkBrokenBar["d"] := "{u+22c4}"          ; (⋄) diamond operator
dkBrokenBar["D"] := "{u+22c4}"          ; (⋄) diamond operator
dkBrokenBar["e"] := "{u+025b}"          ; (ɛ) small open e (latin small epsilon)
dkBrokenBar["E"] := "{u+0190}"          ; (Ɛ) capital open E (latin capital epsilon)
dkBrokenBar["f"] := "{u+2766}"          ; (❦) floral heart
dkBrokenBar["F"] := "{u+2767}"          ; (❧) rotated floral heart bullet
dkBrokenBar["g"] := "{u+0260}"          ; (ɠ) g with hook
dkBrokenBar["G"] := "{u+0193}"          ; (Ɠ) G with hook
dkBrokenBar["h"] := "{u+a727}"          ; (ꜧ) small letter heng
dkBrokenBar["H"] := "{u+a726}"          ; (Ꜧ) capital letter heng
dkBrokenBar[chr(0x00f9)] := "{u+0267}"  ; (ù -> ɧ) small letter heng with hook
dkBrokenBar["k"] := "{u+1e31}"          ; (ḱ) k with acute
dkBrokenBar["K"] := "{u+1e30}"          ; (Ḱ) K with acute
dkBrokenBar["m"] := "{u+0271}"          ; (ɱ) m with hook
dkBrokenBar["M"] := "{u+2c6e}"          ; (Ɱ) M with hook
dkBrokenBar["n"] := "{u+0272}"          ; (ɲ) n with left hook
dkBrokenBar["N"] := "{u+019d}"          ; (Ɲ) N with left hook
dkBrokenBar["o"] := "{u+01a1}"          ; (ơ) o with horn
dkBrokenBar["O"] := "{u+01a0}"          ; (Ơ) O with horn
dkBrokenBar["p"] := "{u+1e55}"          ; (ṕ) p with acute
dkBrokenBar["P"] := "{u+1e54}"          ; (Ṕ) P with acute
dkBrokenBar["r"] := "{u+027d}"          ; (ɽ) r with tail
dkBrokenBar["R"] := "{u+2c64}"          ; (Ɽ) R with tail
dkBrokenBar["s"] := "{u+0283}"          ; (ʃ) small letter esh
dkBrokenBar["S"] := "{u+01a9}"          ; (Ʃ) capital letter esh
dkBrokenBar[chr(0x00df)] := "{u+017f}"  ; (ß -> ſ) small long s
dkBrokenBar["u"] := "{u+01b0}"          ; (ư) u with horn
dkBrokenBar["U"] := "{u+01af}"          ; (Ư) U with horn
dkBrokenBar["v"] := "{u+028c}"          ; (ʌ) latin small letter turned v
dkBrokenBar["V"] := "{u+0245}"          ; (Ʌ) latin capital letter turned V
dkBrokenBar["w"] := "{u+2c73}"          ; (ⱳ) w with hook
dkBrokenBar["W"] := "{u+2c72}"          ; (Ⱳ) W with hook
dkBrokenBar["y"] := "{u+01b4}"          ; (ƴ) y with hook
dkBrokenBar["Y"] := "{u+01b3}"          ; (Ƴ) Y with hook
dkBrokenBar["z"] := "{u+0225}"          ; (ȥ) z with hook
dkBrokenBar["Z"] := "{u+0224}"          ; (Ȥ) Z with hook
dkBrokenBar["\"] := "{u+00a6}"          ; (¦) broken bar
dkBrokenBar["|"] := "{u+00a6}"          ; (¦) broken bar
dkBrokenBar[" "] := "{u+00a6}"          ; (¦) broken bar


; Dead Key :  Greek Alphabet

global dkGreekAlphabet := Map()
dkGreekAlphabet["a"] := "{u+03b1}"  ; (α) small alpha
dkGreekAlphabet["A"] := "{u+0391}"  ; (Α) capital alpha
dkGreekAlphabet["b"] := "{u+03b2}"  ; (β) small beta
dkGreekAlphabet["B"] := "{u+0392}"  ; (Β) capital beta
dkGreekAlphabet["v"] := "{u+03b2}"  ; (β) small beta
dkGreekAlphabet["V"] := "{u+0392}"  ; (Β) capital beta
dkGreekAlphabet["g"] := "{u+03b3}"  ; (γ) small gamma
dkGreekAlphabet["G"] := "{u+0393}"  ; (Γ) capital gamma
dkGreekAlphabet["d"] := "{u+03b4}"  ; (δ) small delta
dkGreekAlphabet["D"] := "{u+0394}"  ; (Δ) capital delta
dkGreekAlphabet["e"] := "{u+03b5}"  ; (ε) small epsilon
dkGreekAlphabet["E"] := "{u+0395}"  ; (Ε) capital epsilon
dkGreekAlphabet["z"] := "{u+03b6}"  ; (ζ) small zeta
dkGreekAlphabet["Z"] := "{u+0396}"  ; (Ζ) capital zeta
dkGreekAlphabet["h"] := "{u+03b7}"  ; (η) small eta
dkGreekAlphabet["H"] := "{u+0397}"  ; (Η) capital eta
dkGreekAlphabet["j"] := "{u+03b8}"  ; (θ) small theta
dkGreekAlphabet["J"] := "{u+0398}"  ; (Θ) capital theta
dkGreekAlphabet["i"] := "{u+03b9}"  ; (ι) small iota
dkGreekAlphabet["I"] := "{u+0399}"  ; (Ι) capital iota
dkGreekAlphabet["k"] := "{u+03ba}"  ; (κ) small kappa
dkGreekAlphabet["K"] := "{u+039a}"  ; (Κ) capital kappa
dkGreekAlphabet["l"] := "{u+03bb}"  ; (λ) small lambda
dkGreekAlphabet["L"] := "{u+039b}"  ; (Λ) capital lambda
dkGreekAlphabet["m"] := "{u+03bc}"  ; (μ) small mu
dkGreekAlphabet["M"] := "{u+039c}"  ; (Μ) capital mu
dkGreekAlphabet["n"] := "{u+03bd}"  ; (ν) small nu
dkGreekAlphabet["N"] := "{u+039d}"  ; (Ν) capital nu
dkGreekAlphabet["x"] := "{u+03be}"  ; (ξ) small xi
dkGreekAlphabet["X"] := "{u+039e}"  ; (Ξ) capital xi
dkGreekAlphabet["o"] := "{u+03bf}"  ; (ο) small omicron
dkGreekAlphabet["O"] := "{u+039f}"  ; (Ο) capital omicron
dkGreekAlphabet["p"] := "{u+03c0}"  ; (π) small pi
dkGreekAlphabet["P"] := "{u+03a0}"  ; (Π) capital pi
dkGreekAlphabet["r"] := "{u+03c1}"  ; (ρ) small rho
dkGreekAlphabet["R"] := "{u+03a1}"  ; (Ρ) capital rho
dkGreekAlphabet["s"] := "{u+03c3}"  ; (σ) small sigma
dkGreekAlphabet["S"] := "{u+03a3}"  ; (Σ) capital sigma
dkGreekAlphabet[","] := "{u+03c2}"  ; (ς) small sigma, in word-final position
dkGreekAlphabet[chr(0x00df)] := "{u+03c2}"  ; (ß -> ς) small sigma, in word-final position
dkGreekAlphabet["t"] := "{u+03c4}"  ; (τ) small tau
dkGreekAlphabet["T"] := "{u+03a4}"  ; (Τ) capital tau
dkGreekAlphabet["u"] := "{u+03c5}"  ; (υ) small upsilon
dkGreekAlphabet["U"] := "{u+03a5}"  ; (Υ) capital upsilon
dkGreekAlphabet["y"] := "{u+03c5}"  ; (υ) small upsilon
dkGreekAlphabet["Y"] := "{u+03a5}"  ; (Υ) capital upsilon
dkGreekAlphabet["f"] := "{u+03c6}"  ; (φ) small phi
dkGreekAlphabet["F"] := "{u+03a6}"  ; (Φ) capital phi
dkGreekAlphabet["c"] := "{u+03c7}"  ; (χ) small chi
dkGreekAlphabet["C"] := "{u+03a7}"  ; (Χ) capital chi
dkGreekAlphabet["w"] := "{u+03c8}"  ; (ψ) small psi
dkGreekAlphabet["W"] := "{u+03a8}"  ; (Ψ) capital psi
dkGreekAlphabet["q"] := "{u+03c9}"  ; (ω) small omega
dkGreekAlphabet["Q"] := "{u+03a9}"  ; (Ω) capital omega
dkGreekAlphabet["!"] := "{u+00b9}"  ; (¹) superscript 1
dkGreekAlphabet["@"] := "{u+00b2}"  ; (²) superscript 2
dkGreekAlphabet["#"] := "{u+00b3}"  ; (³) superscript 3
dkGreekAlphabet["$"] := "{u+2074}"  ; (⁴) superscript 4
dkGreekAlphabet["%"] := "{u+2075}"  ; (⁵) superscript 5
dkGreekAlphabet["^"] := "{u+2076}"  ; (⁶) superscript 6
dkGreekAlphabet["&"] := "{u+2077}"  ; (⁷) superscript 7
dkGreekAlphabet["*"] := "{u+2078}"  ; (⁸) superscript 8
dkGreekAlphabet["("] := "{u+2079}"  ; (⁹) superscript 9
dkGreekAlphabet[")"] := "{u+2070}"  ; (⁰) superscript 0
dkGreekAlphabet["-"] := "{u+207b}"  ; (⁻) superscript -
dkGreekAlphabet["="] := "{u+207c}"  ; (⁼) superscript =
dkGreekAlphabet["+"] := "{u+207a}"  ; (⁺) superscript +
dkGreekAlphabet["["] := "{u+207d}"  ; (⁽) superscript (
dkGreekAlphabet["]"] := "{u+207e}"  ; (⁾) superscript )
dkGreekAlphabet["1"] := "{u+2081}"  ; (₁) subscript 1
dkGreekAlphabet["2"] := "{u+2082}"  ; (₂) subscript 2
dkGreekAlphabet["3"] := "{u+2083}"  ; (₃) subscript 3
dkGreekAlphabet["4"] := "{u+2084}"  ; (₄) subscript 4
dkGreekAlphabet["5"] := "{u+2085}"  ; (₅) subscript 5
dkGreekAlphabet["6"] := "{u+2086}"  ; (₆) subscript 6
dkGreekAlphabet["7"] := "{u+2087}"  ; (₇) subscript 7
dkGreekAlphabet["8"] := "{u+2088}"  ; (₈) subscript 8
dkGreekAlphabet["9"] := "{u+2089}"  ; (₉) subscript 9
dkGreekAlphabet["0"] := "{u+2080}"  ; (₀) subscript 0
dkGreekAlphabet[";"] := "{u+208b}"  ; (₋) subscript -
dkGreekAlphabet["'"] := "{u+208c}"  ; (₌) subscript =
dkGreekAlphabet[chr(34)] := "{u+208a}"  ; (₊) subscript +
dkGreekAlphabet["{"] := "{u+208d}"  ; (₍) subscript (
dkGreekAlphabet["}"] := "{u+208e}"  ; (₎) subscript )
dkGreekAlphabet["."] := "{u+00b5}"  ; (µ) micro sign
dkGreekAlphabet[" "] := "{u+03bc}"  ; (μ) small mu


; Dead Key :  Math Symbols

global dkMathSymbols := Map()
dkMathSymbols["a"] := "{u+2200}"  ; (∀) for all
dkMathSymbols["A"] := "{u+2200}"  ; (∀) for all
dkMathSymbols["b"] := "{u+2286}"  ; (⊆) subset of or equal to
dkMathSymbols["B"] := "{u+2287}"  ; (⊇) superset of or equal to
dkMathSymbols["c"] := "{u+221d}"  ; (∝) proportional to
dkMathSymbols["C"] := "{u+2102}"  ; (ℂ) complex numbers
dkMathSymbols["d"] := "{u+2206}"  ; (∆) increment operator
dkMathSymbols["D"] := "{u+2207}"  ; (∇) nable/del operator
dkMathSymbols["e"] := "{u+2203}"  ; (∃) there exists
dkMathSymbols["E"] := "{u+2204}"  ; (∄) there does not exist
dkMathSymbols["f"] := "{u+0192}"  ; (ƒ) f with hook
dkMathSymbols["F"] := "{u+220e}"  ; (∎) end of proof
dkMathSymbols["g"] := "{u+2282}"  ; (⊂) subset of
dkMathSymbols["G"] := "{u+2284}"  ; (⊄) not a subset of
dkMathSymbols["h"] := "{u+2283}"  ; (⊃) superset of
dkMathSymbols["H"] := "{u+2285}"  ; (⊅) not a superset of
dkMathSymbols["i"] := "{u+221e}"  ; (∞) infinity symbol
dkMathSymbols["I"] := "{u+221e}"  ; (∞) infinity symbol
dkMathSymbols["k"] := "{u+220b}"  ; (∋) contains as member
dkMathSymbols["K"] := "{u+220c}"  ; (∌) does not contain as member
dkMathSymbols["l"] := "{u+2225}"  ; (∥) parallel to
dkMathSymbols["L"] := "{u+2226}"  ; (∦) not parallel to
dkMathSymbols["m"] := "{u+2208}"  ; (∈) element of
dkMathSymbols["M"] := "{u+2209}"  ; (∉) not an element of
dkMathSymbols["n"] := "{u+207f}"  ; (ⁿ) superscript n
dkMathSymbols["N"] := "{u+2115}"  ; (ℕ) natural numbers
dkMathSymbols["o"] := "{u+2218}"  ; (∘) ring operator
dkMathSymbols["O"] := "{u+2205}"  ; (∅) empty set
dkMathSymbols["p"] := "{u+2202}"  ; (∂) partial differential
dkMathSymbols["P"] := "{u+2119}"  ; (ℙ) prime numbers
dkMathSymbols["q"] := "{u+211a}"  ; (ℚ) rational numbers
dkMathSymbols["Q"] := "{u+211a}"  ; (ℚ) rational numbers
dkMathSymbols["r"] := "{u+221a}"  ; (√) square root
dkMathSymbols["R"] := "{u+211d}"  ; (ℝ) real numbers
dkMathSymbols["s"] := "{u+2229}"  ; (∩) set intersection
dkMathSymbols["S"] := "{u+222b}"  ; (∫) integral symbol
dkMathSymbols["u"] := "{u+222a}"  ; (∪) set union
dkMathSymbols["U"] := "{u+2216}"  ; (∖) set minus
dkMathSymbols["w"] := "{u+2118}"  ; (℘) Weierstrass elliptic function
dkMathSymbols["W"] := "{u+2118}"  ; (℘) Weierstrass elliptic function
dkMathSymbols["z"] := "{u+21af}"  ; (↯) downwards zigzag arrow
dkMathSymbols["Z"] := "{u+2124}"  ; (ℤ) whole numbers
dkMathSymbols["1"] := "{u+2260}"  ; (≠) not equal to
dkMathSymbols["!"] := "{u+2260}"  ; (≠) not equal to
dkMathSymbols["2"] := "{u+221a}"  ; (√) square root
dkMathSymbols["@"] := "{u+221a}"  ; (√) square root
dkMathSymbols["3"] := "{u+221b}"  ; (∛) cube root
dkMathSymbols["#"] := "{u+221b}"  ; (∛) cube root
dkMathSymbols["4"] := "{u+221c}"  ; (∜) fourth root
dkMathSymbols["$"] := "{u+221c}"  ; (∜) fourth root
dkMathSymbols["5"] := "{u+2031}"  ; (‱) per ten thousand sign
dkMathSymbols["%"] := "{u+2030}"  ; (‰) per mille sign
dkMathSymbols["6"] := "{u+2220}"  ; (∠) angle symbol
dkMathSymbols["^"] := "{u+2220}"  ; (∠) angle symbol
dkMathSymbols["7"] := "{u+2227}"  ; (∧) logical and
dkMathSymbols["&"] := "{u+2227}"  ; (∧) logical and
dkMathSymbols["8"] := "{u+2297}"  ; (⊗) tensor product
dkMathSymbols["*"] := "{u+2297}"  ; (⊗) tensor product
dkMathSymbols["9"] := "{u+221f}"  ; (∟) right angle
dkMathSymbols["("] := "{u+221f}"  ; (∟) right angle
dkMathSymbols["0"] := "{u+2221}"  ; (∡) measured angle
dkMathSymbols[")"] := "{u+2221}"  ; (∡) measured angle
dkMathSymbols["``"] := "{u+2248}" ; (≈) almost equal to
dkMathSymbols["~"] := "{u+2248}"  ; (≈) almost equal to
dkMathSymbols[","] := "{u+2264}"  ; (≤) less-than or equal to
dkMathSymbols["<"] := "{u+2264}"  ; (≤) less-than or equal to
dkMathSymbols["."] := "{u+2265}"  ; (≥) greater-than or equal to
dkMathSymbols[">"] := "{u+2265}"  ; (≥) greater-than or equal to
dkMathSymbols["-"] := "{u+00b1}"  ; (±) plus-minus sign
dkMathSymbols["_"] := "{u+2296}"  ; (⊖) circled minus
dkMathSymbols["="] := "{u+225d}"  ; (≝) equal to by definition
dkMathSymbols["+"] := "{u+2295}"  ; (⊕) exclusive or
dkMathSymbols[chr(0x00d7)] := "{u+2261}"  ; (× -> ≡) identical to
dkMathSymbols[chr(0x00f7)] := "{u+2262}"  ; (÷ -> ≢) not identical to
dkMathSymbols[";"] := "{u+2235}"  ; (∵) because sign
dkMathSymbols[":"] := "{u+2234}"  ; (∴) therefore sign
dkMathSymbols["'"] := "{u+2032}"  ; (′) prime
dkMathSymbols[chr(34)] := "{u+2033}"  ; (″) double prime
dkMathSymbols["/"] := "{u+2034}"  ; (‴) triple prime
dkMathSymbols["?"] := "{u+2057}"  ; (⁗) quadruple prime
dkMathSymbols["\"] := "{u+2228}"  ; (∨) logical or
dkMathSymbols["|"] := "{u+2228}"  ; (∨) logical or
dkMathSymbols[" "] := "{u+221a}"  ; (√) square root


; Configuration :  Switch positions of symbols and digits; no dead keys on standard layout

$1::Send "{!}"   ; exclamation mark
$+1::Send "1"    ; digit 1

$2::Send "@"     ; at sign
$+2::Send "2"    ; digit 2

$3::Send "{#}"   ; number sign
$+3::Send "3"    ; digit 3

$4::Send "$"     ; dollar sign
$+4::Send "4"    ; digit 4

$5::Send "`%"    ; percent sign
$+5::Send "5"    ; digit 5

$6::Send "{^} "  ; circumflex accent
$+6::Send "6"    ; digit 6

$7::Send "&"     ; ampersand
$+7::Send "7"    ; digit 7

$8::Send "*"     ; asterisk
$+8::Send "8"    ; digit 8

$9::Send "("     ; left parenthesis
$+9::Send 9      ; digit 9

$0::Send ")"     ; right parenthesis
$+0::Send "0"    ; digit 0

$`::Send "`` "   ; grave accent
$~::Send "~ "    ; tilde

$'::Send "' "    ; apostrophe
$"::Send "`" "   ; quotation mark


; Configuration :  AltGr on United States-International

<^>!a:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  else
    Send "{u+00e4}"  ; (ä) a with diaeresis
}
<^>!+a:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e4}"  ; (ä) a with diaeresis
  else
    Send "{u+00c4}"  ; (Ä) A with diaeresis
}

<^>!z:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c0}"  ; (À) A with grave
  else
    Send "{u+00e0}"  ; (à) a with grave
}
<^>!+z:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e0}"  ; (à) a with grave
  else
    Send "{u+00c0}"  ; (À) A with grave
}

<^>!x:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c1}"  ; (Á) A with acute
  else
    Send "{u+00e1}"  ; (á) a with acute
}
<^>!+x:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e1}"  ; (á) a with acute
  else
    Send "{u+00c1}"  ; (Á) A with acute
}

<^>!q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
<^>!+q:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
}

<^>!w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c5}"  ; (Å) A with ring above
  else
    Send "{u+00e5}"  ; (å) a with ring above
}
<^>!+w:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e5}"  ; (å) a with ring above
  else
    Send "{u+00c5}"  ; (Å) A with ring above
}

<^>!c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c7}"  ; (Ç) C with cedilla
  else
    Send "{u+00e7}"  ; (ç) c with cedilla
}
<^>!+c:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e7}"  ; (ç) c with cedilla
  else
    Send "{u+00c7}"  ; (Ç) C with cedilla
}

<^>!d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d0}"  ; (Ð) capital letter eth
  else
    Send "{u+00f0}"  ; (ð) small letter eth
}
<^>!+d:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f0}"  ; (ð) small letter eth
  else
    Send "{u+00d0}"  ; (Ð) capital letter eth
}

<^>!e:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  else
    Send "{u+00eb}"  ; (ë) e with diaeresis
}
<^>!+e:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00eb}"  ; (ë) e with diaeresis
  else
    Send "{u+00cb}"  ; (Ë) E with diaeresis
}

<^>!f:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c8}"  ; (È) E with grave
  else
    Send "{u+00e8}"  ; (è) e with grave
}
<^>!+f:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e8}"  ; (è) e with grave
  else
    Send "{u+00c8}"  ; (È) E with grave
}

<^>!g:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c9}"  ; (É) E with acute
  else
    Send "{u+00e9}"  ; (é) e with acute
}
<^>!+g:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
  else
    Send "{u+00c9}"  ; (É) E with acute
}

<^>!i:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  else
    Send "{u+00ef}"  ; (ï) i with diaeresis
}
<^>!+i:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ef}"  ; (ï) i with diaeresis
  else
    Send "{u+00cf}"  ; (Ï) I with diaeresis
}

<^>!v:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cc}"  ; (Ì) I with grave
  else
    Send "{u+00ec}"  ; (ì) i with grave
}
<^>!+v:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ec}"  ; (ì) i with grave
  else
    Send "{u+00cc}"  ; (Ì) I with grave
}

<^>!b:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cd}"  ; (Í) I with acute
  else
    Send "{u+00ed}"  ; (í) i with acute
}
<^>!+b:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ed}"  ; (í) i with acute
  else
    Send "{u+00cd}"  ; (Í) I with acute
}

<^>!n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d1}"  ; (Ñ) N with tilde
  else
    Send "{u+00f1}"  ; (ñ) n with tilde
}
<^>!+n:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f1}"  ; (ñ) n with tilde
  else
    Send "{u+00d1}"  ; (Ñ) N with tilde
}

<^>!o:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  else
    Send "{u+00f6}"  ; (ö) o with diaeresis
}
<^>!+o:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f6}"  ; (ö) o with diaeresis
  else
    Send "{u+00d6}"  ; (Ö) O with diaeresis
}

<^>!,:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d2}"  ; (Ò) O with grave
  else
    Send "{u+00f2}"  ; (ò) o with grave
}
<^>!<:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f2}"  ; (ò) o with grave
  else
    Send "{u+00d2}"  ; (Ò) O with grave
}

<^>!.:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d3}"  ; (Ó) O with acute
  else
    Send "{u+00f3}"  ; (ó) o with acute
}
<^>!>:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f3}"  ; (ó) o with acute
  else
    Send "{u+00d3}"  ; (Ó) O with acute
}

<^>!k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0152}"  ; (Œ) ligature OE
  else
    Send "{u+0153}"  ; (œ) ligature oe
}
<^>!+k:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0153}"  ; (œ) ligature oe
  else
    Send "{u+0152}"  ; (Œ) ligature OE
}

<^>!l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d8}"  ; (Ø) O with stroke
  else
    Send "{u+00f8}"  ; (ø) o with stroke
}
<^>!+l:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f8}"  ; (ø) o with stroke
  else
    Send "{u+00d8}"  ; (Ø) O with stroke
}

<^>!t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00de}"  ; (Þ) capital letter thorn
  else
    Send "{u+00fe}"  ; (þ) small letter thorn
}
<^>!+t:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fe}"  ; (þ) small letter thorn
  else
    Send "{u+00de}"  ; (Þ) capital letter thorn
}

<^>!u:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  else
    Send "{u+00fc}"  ; (ü) u with diaeresis
}
<^>!+u:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fc}"  ; (ü) u with diaeresis
  else
    Send "{u+00dc}"  ; (Ü) U with diaeresis
}

<^>!h:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d9}"  ; (Ù) U with grave
  else
    Send "{u+00f9}"  ; (ù) u with grave
}
<^>!+h:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f9}"  ; (ù) u with grave
  else
    Send "{u+00d9}"  ; (Ù) U with grave
}

<^>!j:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00da}"  ; (Ú) U with acute
  else
    Send "{u+00fa}"  ; (ú) u with acute
}
<^>!+j:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fa}"  ; (ú) u with acute
  else
    Send "{u+00da}"  ; (Ú) U with acute
}

<^>!y:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+0178}"  ; (Ÿ) Y with diaeresis
  else
    Send "{u+00ff}"  ; (ÿ) y with diaeresis
}
<^>!+y:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ff}"  ; (ÿ) y with diaeresis
  else
    Send "{u+0178}"  ; (Ÿ) Y with diaeresis
}

<^>!r:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dd}"  ; (Ý) Y with acute
  else
    Send "{u+00fd}"  ; (ý) y with acute
}
<^>!+r:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fd}"  ; (ý) y with acute
  else
    Send "{u+00dd}"  ; (Ý) Y with acute
}

<^>!p::Send "{u+2020}"   ; (†) dagger
<^>!+p::Send "{u+2021}"  ; (‡) double dagger

<^>!s::Send "{u+00df}"   ; (ß) small sharp s (Eszett)
<^>!+s::Send "{u+00a7}"  ; (§) section sign

<^>!/::Send "{u+00bf}"   ; (¿) inverted question mark
<^>!?::Send "{u+2026}"   ; (…) horizontal ellipsis

<^>!1::Send "{u+00a1}"   ; (¡) inverted exclamation mark
<^>!+1::Send "{u+00b9}"  ; (¹) superscript 1

<^>!2::Send "{u+00a9}"   ; (©) copyright sign
<^>!+2::Send "{u+00b2}"  ; (²) superscript 2

<^>!3::Send "{u+00b1}"   ; (±) plus-minus sign
<^>!+3::Send "{u+00b3}"  ; (³) superscript 3

<^>!4::Send "{u+00a3}"   ; (£) pound sign
<^>!+4::Send "{u+00a5}"  ; (¥) yen sign

<^>!5::Send "{u+20ac}"   ; (€) euro sign
<^>!+5::Send "{u+00a2}"  ; (¢) cent sign (dollar)

<^>!8::Send "{u+201e}"   ; („) double low-9 quotation mark
<^>!+8::Send "{u+00b6}"  ; (¶) pilcrow sign

<^>!9::Send "{u+201c}"   ; (“) left double quotation mark
<^>!+9::Send "{u+2018}"  ; (‘) left single quotation mark

<^>!0::Send "{u+201d}"   ; (”) right double quotation mark
<^>!+0::Send "{u+2019}"  ; (’) right single quotation mark

<^>!=::Send "{u+00d7}"   ; (×) multiplication sign
<^>!+=::Send "{u+00f7}"  ; (÷) division sign

<^>![::Send "{u+00ab}"   ; («) left-pointing double angle quotation mark
<^>!{::Send "{u+2039}"   ; (‹) left-pointing single angle quotation mark

<^>!]::Send "{u+00bb}"   ; (») right-pointing double angle quotation mark
<^>!}::Send "{u+203a}"   ; (›) right-pointing single angle quotation mark

<^>!;::Send "{u+00b0}"   ; (°) degree sign
<^>!+;::Send "{u+00b7}"  ; (·) middle dot

<^>!6:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}
<^>!+6:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkCaron.Has(ih.Input)
    Send dkCaron[ih.Input]
}

<^>!7:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkRingDotAbove.Has(ih.Input)
    Send dkRingDotAbove[ih.Input]
}
<^>!+7:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkMacronStroke.Has(ih.Input)
    Send dkMacronStroke[ih.Input]
}

<^>!-:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkCedillaOgonek.Has(ih.Input)
    Send dkCedillaOgonek[ih.Input]
}
<^>!_:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkBreveSpecial.Has(ih.Input)
    Send dkBreveSpecial[ih.Input]
}

<^>!':: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkAcuteAccent.Has(ih.Input)
    Send dkAcuteAccent[ih.Input]
}
<^>!":: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}

<^>!`:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkGraveAccent.Has(ih.Input)
    Send dkGraveAccent[ih.Input]
}
<^>!~:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

<^>!\:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkNotSign.Has(ih.Input)
    Send dkNotSign[ih.Input]
}
<^>!|:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkBrokenBar.Has(ih.Input)
    Send dkBrokenBar[ih.Input]
}

<^>!m:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkGreekAlphabet.Has(ih.Input)
    Send dkGreekAlphabet[ih.Input]
}
<^>!+m:: {
  ih := InputHook("L1", dkEndKeys)
  ih.Start()
  ih.Wait()
  if dkMathSymbols.Has(ih.Input)
    Send dkMathSymbols[ih.Input]
}

<^>!space::Send "{u+00a0}"   ; non-breaking space
<^>!+space::Send "{u+00a0}"  ; non-breaking space
