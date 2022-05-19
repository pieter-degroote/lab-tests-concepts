; UltimateKEYS.ahk - 2022-05-19

; Website :  www.ultimatekeys.info (pieter-degroote.github.io/UltimateKEYS/)

; License :  GNU General Public License Version 3

; GitHub :   github.com/pieter-degroote/UltimateKEYS


; Requirements :

; Keyboard layout (on Windows) :  US QWERTY

; AutoHotkey v1.1 (www.autohotkey.com)



ListLines Off   ; omits recently executed lines from history (for privacy and security)
#KeyHistory 0   ; disables the key history (for privacy and security)

SendMode Input  ; optimizes for faster and more reliable input


; Dead Key :  Circumflex Accent (c)

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
dkCircumflex.item[" "] := "{u+02c6}"  ; (ˆ) circumflex accent (modifier)


; Dead Key :  Caron (v)

dkCaron := ComObjCreate("Scripting.Dictionary")
dkCaron.item["a"] := "{u+01ce}"  ; (ǎ) a with caron
dkCaron.item["A"] := "{u+01cd}"  ; (Ǎ) A with caron
dkCaron.item["c"] := "{u+010d}"  ; (č) c with caron
dkCaron.item["C"] := "{u+010c}"  ; (Č) C with caron
dkCaron.item["d"] := "{u+010f}"  ; (ď) d with caron
dkCaron.item["D"] := "{u+010e}"  ; (Ď) D with caron
dkCaron.item["e"] := "{u+011b}"  ; (ě) e with caron
dkCaron.item["E"] := "{u+011a}"  ; (Ě) E with caron
dkCaron.item["g"] := "{u+01e7}"  ; (ǧ) g with caron
dkCaron.item["G"] := "{u+01e6}"  ; (Ǧ) G with caron
dkCaron.item["h"] := "{u+021f}"  ; (ȟ) h with caron
dkCaron.item["H"] := "{u+021e}"  ; (Ȟ) H with caron
dkCaron.item["i"] := "{u+01d0}"  ; (ǐ) i with caron
dkCaron.item["I"] := "{u+01cf}"  ; (Ǐ) I with caron
dkCaron.item["j"] := "{u+01f0}"  ; (ǰ) j with caron
dkCaron.item["k"] := "{u+01e9}"  ; (ǩ) k with caron
dkCaron.item["K"] := "{u+01e8}"  ; (Ǩ) K with caron
dkCaron.item["l"] := "{u+013e}"  ; (ľ) l with caron
dkCaron.item["L"] := "{u+013d}"  ; (Ľ) L with caron
dkCaron.item["n"] := "{u+0148}"  ; (ň) n with caron
dkCaron.item["N"] := "{u+0147}"  ; (Ň) N with caron
dkCaron.item["o"] := "{u+01d2}"  ; (ǒ) o with caron
dkCaron.item["O"] := "{u+01d1}"  ; (Ǒ) O with caron
dkCaron.item["r"] := "{u+0159}"  ; (ř) r with caron
dkCaron.item["R"] := "{u+0158}"  ; (Ř) R with caron
dkCaron.item["s"] := "{u+0161}"  ; (š) s with caron
dkCaron.item["S"] := "{u+0160}"  ; (Š) S with caron
dkCaron.item["t"] := "{u+0165}"  ; (ť) t with caron
dkCaron.item["T"] := "{u+0164}"  ; (Ť) T with caron
dkCaron.item["u"] := "{u+01d4}"  ; (ǔ) u with caron
dkCaron.item["U"] := "{u+01d3}"  ; (Ǔ) U with caron
dkCaron.item["v"] := "{u+01da}"  ; (ǚ) u with diaeresis and caron
dkCaron.item["V"] := "{u+01d9}"  ; (Ǚ) U with diaeresis and caron
dkCaron.item["z"] := "{u+017e}"  ; (ž) z with caron
dkCaron.item["Z"] := "{u+017d}"  ; (Ž) Z with caron
dkCaron.item["3"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
dkCaron.item["#"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron
dkCaron.item[" "] := "{u+02c7}"  ; (ˇ) caron


; Dead Key :  Dot Above (.)

dkDotAbove := ComObjCreate("Scripting.Dictionary")
dkDotAbove.item["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkDotAbove.item["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkDotAbove.item["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkDotAbove.item["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkDotAbove.item["c"] := "{u+010b}"  ; (ċ) c with dot above
dkDotAbove.item["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkDotAbove.item["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkDotAbove.item["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkDotAbove.item["e"] := "{u+0117}"  ; (ė) e with dot above
dkDotAbove.item["E"] := "{u+0116}"  ; (Ė) E with dot above
dkDotAbove.item["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkDotAbove.item["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkDotAbove.item["g"] := "{u+0121}"  ; (ġ) g with dot above
dkDotAbove.item["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkDotAbove.item["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkDotAbove.item["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkDotAbove.item["i"] := "{u+0131}"  ; (ı) dotless i (Turkish, Azerbaijani)
dkDotAbove.item["I"] := "{u+0130}"  ; (İ) I with dot above (Turkish, Azerbaijani)
dkDotAbove.item["j"] := "{u+0237}"  ; (ȷ) dotless j
dkDotAbove.item["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkDotAbove.item["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkDotAbove.item["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkDotAbove.item["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkDotAbove.item["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkDotAbove.item["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkDotAbove.item["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkDotAbove.item["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkDotAbove.item["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkDotAbove.item["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkDotAbove.item["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkDotAbove.item["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkDotAbove.item["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkDotAbove.item["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkDotAbove.item["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkDotAbove.item["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkDotAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
dkDotAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
dkDotAbove.item["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkDotAbove.item["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkDotAbove.item["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkDotAbove.item["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkDotAbove.item["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkDotAbove.item["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkDotAbove.item["z"] := "{u+017c}"  ; (ż) z with dot above
dkDotAbove.item["Z"] := "{u+017b}"  ; (Ż) Z with dot above


; Dead Key :  Ring Above (o)

dkRingAbove := ComObjCreate("Scripting.Dictionary")
dkRingAbove.item["u"] := "{u+016f}"  ; (ů) u with ring above
dkRingAbove.item["U"] := "{u+016e}"  ; (Ů) U with ring above
dkRingAbove.item["w"] := "{u+1e98}"  ; (ẘ) w with ring above
dkRingAbove.item["y"] := "{u+1e99}"  ; (ẙ) y with ring above


; Dead Key :  Macron/Stroke (-)

dkMacronStroke := ComObjCreate("Scripting.Dictionary")
dkMacronStroke.item["a"] := "{u+0101}"  ; (ā) a with macron
dkMacronStroke.item["A"] := "{u+0100}"  ; (Ā) A with macron
dkMacronStroke.item["b"] := "{u+0180}"  ; (ƀ) b with stroke
dkMacronStroke.item["B"] := "{u+0243}"  ; (Ƀ) B with stroke
dkMacronStroke.item["d"] := "{u+0111}"  ; (đ) d with stroke
dkMacronStroke.item["D"] := "{u+0110}"  ; (Đ) D with stroke
dkMacronStroke.item["e"] := "{u+0113}"  ; (ē) e with macron
dkMacronStroke.item["E"] := "{u+0112}"  ; (Ē) E with macron
dkMacronStroke.item["g"] := "{u+01e5}"  ; (ǥ) g with stroke (Skolt Sami)
dkMacronStroke.item["G"] := "{u+01e4}"  ; (Ǥ) G with stroke (Skolt Sami)
dkMacronStroke.item["h"] := "{u+0127}"  ; (ħ) h with stroke (Maltese)
dkMacronStroke.item["H"] := "{u+0126}"  ; (Ħ) H with stroke (Maltese)
dkMacronStroke.item["i"] := "{u+012b}"  ; (ī) i with macron
dkMacronStroke.item["I"] := "{u+012a}"  ; (Ī) I with macron
dkMacronStroke.item["j"] := "{u+0249}"  ; (ɉ) j with stroke
dkMacronStroke.item["J"] := "{u+0248}"  ; (Ɉ) J with stroke
dkMacronStroke.item["l"] := "{u+0142}"  ; (ł) l with stroke
dkMacronStroke.item["L"] := "{u+0141}"  ; (Ł) L with stroke
dkMacronStroke.item["o"] := "{u+014d}"  ; (ō) o with macron
dkMacronStroke.item["O"] := "{u+014c}"  ; (Ō) O with macron
dkMacronStroke.item["p"] := "{u+1d7d}"  ; (ᵽ) p with stroke
dkMacronStroke.item["P"] := "{u+2c63}"  ; (Ᵽ) P with stroke
dkMacronStroke.item["r"] := "{u+024d}"  ; (ɍ) r with stroke
dkMacronStroke.item["R"] := "{u+024c}"  ; (Ɍ) R with stroke
dkMacronStroke.item["t"] := "{u+0167}"  ; (ŧ) t with stroke
dkMacronStroke.item["T"] := "{u+0166}"  ; (Ŧ) T with stroke
dkMacronStroke.item["u"] := "{u+016b}"  ; (ū) u with macron
dkMacronStroke.item["U"] := "{u+016a}"  ; (Ū) U with macron
dkMacronStroke.item["v"] := "{u+01d6}"  ; (ǖ) u with diaeresis and macron
dkMacronStroke.item["V"] := "{u+01d5}"  ; (Ǖ) U with diaeresis and macron
dkMacronStroke.item["y"] := "{u+0233}"  ; (ȳ) y with macron
dkMacronStroke.item["Y"] := "{u+0232}"  ; (Ȳ) Y with macron
dkMacronStroke.item["z"] := "{u+01b6}"  ; (ƶ) z with stroke
dkMacronStroke.item["Z"] := "{u+01b5}"  ; (Ƶ) Z with stroke
dkMacronStroke.item[" "] := "{u+00af}"  ; (¯) macron


; Dead Key :  Macron/Stroke (Additional) (_)

dkMacronStrokeAdd := ComObjCreate("Scripting.Dictionary")
dkMacronStrokeAdd.item["a"] := "{u+01e3}"  ; (ǣ) ae with macron
dkMacronStrokeAdd.item["A"] := "{u+01e2}"  ; (Ǣ) AE with macron
dkMacronStrokeAdd.item["g"] := "{u+1e21}"  ; (ḡ) g with macron
dkMacronStrokeAdd.item["G"] := "{u+1e20}"  ; (Ḡ) G with macron
dkMacronStrokeAdd.item["i"] := "{u+0268}"  ; (ɨ) i with stroke
dkMacronStrokeAdd.item["I"] := "{u+0197}"  ; (Ɨ) I with stroke
dkMacronStrokeAdd.item["l"] := "{u+019a}"  ; (ƚ) l with bar
dkMacronStrokeAdd.item["L"] := "{u+023d}"  ; (Ƚ) L with bar
dkMacronStrokeAdd.item["o"] := "{u+01ed}"  ; (ǭ) o with ogonek and macron
dkMacronStrokeAdd.item["O"] := "{u+01ec}"  ; (Ǭ) O with ogonek and macron
dkMacronStrokeAdd.item["u"] := "{u+0289}"  ; (ʉ) u with bar
dkMacronStrokeAdd.item["U"] := "{u+0244}"  ; (Ʉ) U with bar
dkMacronStrokeAdd.item["y"] := "{u+024f}"  ; (ɏ) y with stroke
dkMacronStrokeAdd.item["Y"] := "{u+024e}"  ; (Ɏ) Y with stroke
dkMacronStrokeAdd.item[" "] := "{u+00af}"  ; (¯) macron


; Dead Key :  Cedilla/Ogonek (,)

dkCedillaOgonek := ComObjCreate("Scripting.Dictionary")
dkCedillaOgonek.item["a"] := "{u+0105}"  ; (ą) a with ogonek
dkCedillaOgonek.item["A"] := "{u+0104}"  ; (Ą) A with ogonek
dkCedillaOgonek.item["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkCedillaOgonek.item["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkCedillaOgonek.item["d"] := "{u+1e11}"  ; (ḑ) d with cedilla
dkCedillaOgonek.item["D"] := "{u+1e10}"  ; (Ḑ) D with cedilla
dkCedillaOgonek.item["e"] := "{u+0119}"  ; (ę) e with ogonek
dkCedillaOgonek.item["E"] := "{u+0118}"  ; (Ę) E with ogonek
dkCedillaOgonek.item["f"] := "{u+0229}"  ; (ȩ) e with cedilla
dkCedillaOgonek.item["F"] := "{u+0228}"  ; (Ȩ) E with cedilla
dkCedillaOgonek.item["g"] := "{u+0123}"  ; (ģ) g with cedilla
dkCedillaOgonek.item["G"] := "{u+0122}"  ; (Ģ) G with cedilla
dkCedillaOgonek.item["h"] := "{u+1e29}"  ; (ḩ) h with cedilla
dkCedillaOgonek.item["H"] := "{u+1e28}"  ; (Ḩ) H with cedilla
dkCedillaOgonek.item["i"] := "{u+012f}"  ; (į) i with ogonek
dkCedillaOgonek.item["I"] := "{u+012e}"  ; (Į) I with ogonek
dkCedillaOgonek.item["k"] := "{u+0137}"  ; (ķ) k with cedilla
dkCedillaOgonek.item["K"] := "{u+0136}"  ; (Ķ) K with cedilla
dkCedillaOgonek.item["l"] := "{u+013c}"  ; (ļ) l with cedilla
dkCedillaOgonek.item["L"] := "{u+013b}"  ; (Ļ) L with cedilla
dkCedillaOgonek.item["n"] := "{u+0146}"  ; (ņ) n with cedilla
dkCedillaOgonek.item["N"] := "{u+0145}"  ; (Ņ) N with cedilla
dkCedillaOgonek.item["o"] := "{u+01eb}"  ; (ǫ) o with ogonek
dkCedillaOgonek.item["O"] := "{u+01ea}"  ; (Ǫ) O with ogonek
dkCedillaOgonek.item["r"] := "{u+0157}"  ; (ŗ) r with cedilla
dkCedillaOgonek.item["R"] := "{u+0156}"  ; (Ŗ) R with cedilla
dkCedillaOgonek.item["s"] := "{u+015f}"  ; (ş) s with cedilla
dkCedillaOgonek.item["S"] := "{u+015e}"  ; (Ş) S with cedilla
dkCedillaOgonek.item["t"] := "{u+0163}"  ; (ţ) t with cedilla
dkCedillaOgonek.item["T"] := "{u+0162}"  ; (Ţ) T with cedilla
dkCedillaOgonek.item["u"] := "{u+0173}"  ; (ų) u with ogonek
dkCedillaOgonek.item["U"] := "{u+0172}"  ; (Ų) U with ogonek
dkCedillaOgonek.item["."] := "{u+02db}"  ; (˛) ogonek
dkCedillaOgonek.item[" "] := "{u+00b8}"  ; (¸) cedilla


; Dead Key :  Breve/Special (b)

dkBreveSpecial := ComObjCreate("Scripting.Dictionary")
dkBreveSpecial.item["a"] := "{u+0103}"  ; (ă) a with breve
dkBreveSpecial.item["A"] := "{u+0102}"  ; (Ă) A with breve
dkBreveSpecial.item["d"] := "{u+0256}"  ; (ɖ) small letter d with tail
dkBreveSpecial.item["D"] := "{u+0189}"  ; (Ɖ) capital letter African D
dkBreveSpecial.item["e"] := "{u+0115}"  ; (ĕ) e with breve
dkBreveSpecial.item["E"] := "{u+0114}"  ; (Ĕ) E with breve
dkBreveSpecial.item["f"] := "{u+0259}"  ; (ə) small letter schwa (Azerbaijani)
dkBreveSpecial.item["F"] := "{u+018f}"  ; (Ə) capital letter schwa (Azerbaijani)
dkBreveSpecial.item["g"] := "{u+011f}"  ; (ğ) g with breve
dkBreveSpecial.item["G"] := "{u+011e}"  ; (Ğ) G with breve
dkBreveSpecial.item["i"] := "{u+012d}"  ; (ĭ) i with breve
dkBreveSpecial.item["I"] := "{u+012c}"  ; (Ĭ) I with breve
dkBreveSpecial.item["n"] := "{u+014b}"  ; (ŋ) small letter eng(ma)
dkBreveSpecial.item["N"] := "{u+014a}"  ; (Ŋ) capital letter eng(ma)
dkBreveSpecial.item["o"] := "{u+014f}"  ; (ŏ) o with breve
dkBreveSpecial.item["O"] := "{u+014e}"  ; (Ŏ) O with breve
dkBreveSpecial.item["s"] := "{u+0219}"  ; (ș) s with comma below (Romanian)
dkBreveSpecial.item["S"] := "{u+0218}"  ; (Ș) S with comma below (Romanian)
dkBreveSpecial.item["t"] := "{u+021b}"  ; (ț) t with comma below (Romanian)
dkBreveSpecial.item["T"] := "{u+021a}"  ; (Ț) T with comma below (Romanian)
dkBreveSpecial.item["u"] := "{u+016d}"  ; (ŭ) u with breve
dkBreveSpecial.item["U"] := "{u+016c}"  ; (Ŭ) U with breve
dkBreveSpecial.item["w"] := "{u+01bf}"  ; (ƿ) small letter wynn
dkBreveSpecial.item["W"] := "{u+01f7}"  ; (Ƿ) capital letter wynn
dkBreveSpecial.item["y"] := "{u+021d}"  ; (ȝ) small letter yogh
dkBreveSpecial.item["Y"] := "{u+021c}"  ; (Ȝ) capital letter yogh
dkBreveSpecial.item["3"] := "{u+0292}"  ; (ʒ) small letter ezh
dkBreveSpecial.item["#"] := "{u+01b7}"  ; (Ʒ) capital letter ezh
dkBreveSpecial.item[" "] := "{u+02d8}"  ; (˘) breve


; Dead Key :  Inverted Breve (B)

dkInvertedBreve := ComObjCreate("Scripting.Dictionary")
dkInvertedBreve.item["a"] := "{u+0203}"  ; (ȃ) a with inverted breve
dkInvertedBreve.item["A"] := "{u+0202}"  ; (Ȃ) A with inverted breve
dkInvertedBreve.item["e"] := "{u+0207}"  ; (ȇ) e with inverted breve
dkInvertedBreve.item["E"] := "{u+0206}"  ; (Ȇ) E with inverted breve
dkInvertedBreve.item["i"] := "{u+020b}"  ; (ȋ) i with inverted breve
dkInvertedBreve.item["I"] := "{u+020a}"  ; (Ȋ) I with inverted breve
dkInvertedBreve.item["o"] := "{u+020f}"  ; (ȏ) o with inverted breve
dkInvertedBreve.item["O"] := "{u+020e}"  ; (Ȏ) O with inverted breve
dkInvertedBreve.item["r"] := "{u+0213}"  ; (ȓ) r with inverted breve
dkInvertedBreve.item["R"] := "{u+0212}"  ; (Ȓ) R with inverted breve
dkInvertedBreve.item["u"] := "{u+0217}"  ; (ȗ) u with inverted breve
dkInvertedBreve.item["U"] := "{u+0216}"  ; (Ȗ) U with inverted breve


; Dead Key :  Acute Accent (')

dkAcuteAccent := ComObjCreate("Scripting.Dictionary")
dkAcuteAccent.item["a"] := "{u+00e1}"  ; (á) a with acute
dkAcuteAccent.item["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcuteAccent.item["c"] := "{u+0107}"  ; (ć) c with acute
dkAcuteAccent.item["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcuteAccent.item["e"] := "{u+00e9}"  ; (é) e with acute
dkAcuteAccent.item["E"] := "{u+00c9}"  ; (É) E with acute
dkAcuteAccent.item["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcuteAccent.item["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcuteAccent.item["i"] := "{u+00ed}"  ; (í) i with acute
dkAcuteAccent.item["I"] := "{u+00cd}"  ; (Í) I with acute
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
dkAcuteAccent.item["v"] := "{u+01d8}"  ; (ǘ) u with diaeresis and acute
dkAcuteAccent.item["V"] := "{u+01d7}"  ; (Ǘ) U with diaeresis and acute
dkAcuteAccent.item["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcuteAccent.item["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcuteAccent.item["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcuteAccent.item["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcuteAccent.item["z"] := "{u+017a}"  ; (ź) z with acute
dkAcuteAccent.item["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcuteAccent.item["b"] := "{u+01fb}"  ; (ǻ) a with ring above and acute
dkAcuteAccent.item["B"] := "{u+01fa}"  ; (Ǻ) A with ring above and acute
dkAcuteAccent.item["d"] := "{u+1e09}"  ; (ḉ) c with cedilla and acute
dkAcuteAccent.item["D"] := "{u+1e08}"  ; (Ḉ) C with cedilla and acute
dkAcuteAccent.item["f"] := "{u+01fd}"  ; (ǽ) ae with acute
dkAcuteAccent.item["F"] := "{u+01fc}"  ; (Ǽ) AE with acute
dkAcuteAccent.item["q"] := "{u+01ff}"  ; (ǿ) o with stroke and acute
dkAcuteAccent.item["Q"] := "{u+01fe}"  ; (Ǿ) O with stroke and acute


; Dead Key :  Diaeresis (")

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


; Dead Key :  Double Acute Accent and Special Letters (=)

dkDoubleAcute := ComObjCreate("Scripting.Dictionary")
dkDoubleAcute.item["o"] := "{u+0151}"  ; (ő) o with double acute
dkDoubleAcute.item["O"] := "{u+0150}"  ; (Ő) O with double acute
dkDoubleAcute.item["u"] := "{u+0171}"  ; (ű) u with double acute
dkDoubleAcute.item["U"] := "{u+0170}"  ; (Ű) U with double acute
dkDoubleAcute.item["h"] := "{u+a727}"  ; (ꜧ) small letter heng
dkDoubleAcute.item["H"] := "{u+a726}"  ; (Ꜧ) capital letter heng
dkDoubleAcute.item[" "] := "{u+02dd}"  ; (˝) double acute accent


; Dead Key :  Horn and Special Letters (Additional) (+)

dkHorn := ComObjCreate("Scripting.Dictionary")
dkHorn.item["o"] := "{u+01a1}"  ; (ơ) o with horn
dkHorn.item["O"] := "{u+01a0}"  ; (Ơ) O with horn
dkHorn.item["u"] := "{u+01b0}"  ; (ư) u with horn
dkHorn.item["U"] := "{u+01af}"  ; (Ư) U with horn
dkHorn.item["g"] := "{u+ab36}"  ; (ꬶ) cross-tailed g
dkHorn.item["h"] := "{u+0267}"  ; (ɧ) small letter heng with hook
dkHorn.item["k"] := "{u+0138}"  ; (ĸ) small letter kra
dkHorn.item["s"] := "{u+0283}"  ; (ʃ) small letter esh
dkHorn.item["S"] := "{u+01a9}"  ; (Ʃ) capital letter esh


; Dead Key :  Grave Accent (`)

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
dkGraveAccent.item["v"] := "{u+01dc}"  ; (ǜ) u with diaeresis and grave
dkGraveAccent.item["V"] := "{u+01db}"  ; (Ǜ) U with diaeresis and grave
dkGraveAccent.item["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGraveAccent.item["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGraveAccent.item["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGraveAccent.item["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGraveAccent.item[" "] := "{u+02cb}"  ; (ˋ) grave accent (modifier)


; Dead Key :  Double Grave (G)

dkDoubleGrave := ComObjCreate("Scripting.Dictionary")
dkDoubleGrave.item["a"] := "{u+0201}"  ; (ȁ) a with double grave
dkDoubleGrave.item["A"] := "{u+0200}"  ; (Ȁ) A with double grave
dkDoubleGrave.item["e"] := "{u+0205}"  ; (ȅ) e with double grave
dkDoubleGrave.item["E"] := "{u+0204}"  ; (Ȅ) E with double grave
dkDoubleGrave.item["i"] := "{u+0209}"  ; (ȉ) i with double grave
dkDoubleGrave.item["I"] := "{u+0208}"  ; (Ȉ) I with double grave
dkDoubleGrave.item["o"] := "{u+020d}"  ; (ȍ) o with double grave
dkDoubleGrave.item["O"] := "{u+020c}"  ; (Ȍ) O with double grave
dkDoubleGrave.item["r"] := "{u+0211}"  ; (ȑ) r with double grave
dkDoubleGrave.item["R"] := "{u+0210}"  ; (Ȑ) R with double grave
dkDoubleGrave.item["u"] := "{u+0215}"  ; (ȕ) u with double grave
dkDoubleGrave.item["U"] := "{u+0214}"  ; (Ȕ) U with double grave


; Dead Key :  Tilde (~)

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
dkTilde.item[" "] := "{u+02dc}"  ; (˜) tilde


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
  return

>!d::
  if GetKeyState("CapsLock", "T")
    Send {u+00c2}  ; (Â) A with circumflex
  else
    Send {u+00e2}  ; (â) a with circumflex
  return
>!+d::
  if GetKeyState("CapsLock", "T")
    Send {u+00e2}  ; (â) a with circumflex
  else
    Send {u+00c2}  ; (Â) A with circumflex
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
  return

>!r::
  if GetKeyState("CapsLock", "T")
    Send {u+00ca}  ; (Ê) E with circumflex
  else
    Send {u+00ea}  ; (ê) e with circumflex
  return
>!+r::
  if GetKeyState("CapsLock", "T")
    Send {u+00ea}  ; (ê) e with circumflex
  else
    Send {u+00ca}  ; (Ê) E with circumflex
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
  return

>!p::
  if GetKeyState("CapsLock", "T")
    Send {u+00d4}  ; (Ô) O with circumflex
  else
    Send {u+00f4}  ; (ô) o with circumflex
  return
>!+p::
  if GetKeyState("CapsLock", "T")
    Send {u+00f4}  ; (ô) o with circumflex
  else
    Send {u+00d4}  ; (Ô) O with circumflex
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
  return

>!y::
  if GetKeyState("CapsLock", "T")
    Send {u+00db}  ; (Û) U with circumflex
  else
    Send {u+00fb}  ; (û) u with circumflex
  return
>!+y::
  if GetKeyState("CapsLock", "T")
    Send {u+00fb}  ; (û) u with circumflex
  else
    Send {u+00db}  ; (Û) U with circumflex
  return

>!-::
  if GetKeyState("CapsLock", "T")
    Send {u+00c3}  ; (Ã) A with tilde
  else
    Send {u+00e3}  ; (ã) a with tilde
  return
>!_::
  if GetKeyState("CapsLock", "T")
    Send {u+00e3}  ; (ã) a with tilde
  else
    Send {u+00c3}  ; (Ã) A with tilde
  return

>!=::
  if GetKeyState("CapsLock", "T")
    Send {u+00d5}  ; (Õ) O with tilde
  else
    Send {u+00f5}  ; (õ) o with tilde
  return
>!+=::
  if GetKeyState("CapsLock", "T")
    Send {u+00f5}  ; (õ) o with tilde
  else
    Send {u+00d5}  ; (Õ) O with tilde
  return

>!m::Send {u+00b1}   ; (±) plus-minus sign
>!+m::Send {u+2030}  ; (‰) per mille sign

>!1::Send {u+00a1}   ; (¡) inverted exclamation mark
>!+1::Send {u+00b9}  ; (¹) superscript 1

>!2::Send {u+2013}   ; (–) en dash
>!+2::Send {u+00b2}  ; (²) superscript 2

>!3::Send {u+2014}   ; (—) em dash
>!+3::Send {u+00b3}  ; (³) superscript 3

>!4::Send {u+00a3}   ; (£) pound sign
>!+4::Send {u+00a5}  ; (¥) yen sign

>!5::Send {u+20ac}   ; (€) euro sign
>!+5::Send {u+00a2}  ; (¢) cent sign (dollar)

>!6::Send {u+2264}   ; (≤) less-than or equal to
>!+6::Send {u+2260}  ; (≠) not equal to

>!7::Send {u+2265}   ; (≥) greater-than or equal to
>!+7::Send {u+2248}  ; (≈) almost equal to

>!8::Send {u+201e}   ; („) double low-9 quotation mark
>!+8::Send {u+201a}  ; (‚) single low-9 quotation mark

>!9::Send {u+201c}   ; (“) left double quotation mark
>!+9::Send {u+2018}  ; (‘) left single quotation mark

>!0::Send {u+201d}   ; (”) right double quotation mark
>!+0::Send {u+2019}  ; (’) right single quotation mark

>![::Send {u+00ab}   ; («) left-pointing double angle quotation mark
>!{::Send {u+2039}   ; (‹) left-pointing single angle quotation mark

>!]::Send {u+00bb}   ; (») right-pointing double angle quotation mark
>!}::Send {u+203a}   ; (›) right-pointing single angle quotation mark

>!;::Send {u+00b0}   ; (°) degree sign
>!+;::Send {u+00b7}  ; (·) middle dot

>!'::Send {u+00d7}   ; (×) multiplication sign
>!"::Send {u+00f7}   ; (÷) division sign

>!\::Send {u+00a7}   ; (§) section sign
>!|::Send {u+00b6}   ; (¶) pilcrow sign

>!/::Send {u+00bf}   ; (¿) inverted question mark
>!?::Send {u+2026}   ; (…) horizontal ellipsis

>!space::Send {u+00a0}   ; non-breaking space
>!+space::Send {u+00a0}  ; non-breaking space


>!`::
>!~::
  Input, keyA, L1, {bs}{del}{esc}{home}{end}
  Input, keyB, L1, {bs}{del}{esc}{home}{end}

  if (keyA == "c")
    Send % dkCircumflex.item[keyB]
  else if (keyA == "v")
    Send % dkCaron.item[keyB]
  else if (keyA == ".")
    Send % dkDotAbove.item[keyB]
  else if (keyA == "o")
    Send % dkRingAbove.item[keyB]
  else if (keyA == "-")
    Send % dkMacronStroke.item[keyB]
  else if (keyA == "_")
    Send % dkMacronStrokeAdd.item[keyB]
  else if (keyA == ",")
    Send % dkCedillaOgonek.item[keyB]
  else if (keyA == "b")
    Send % dkBreveSpecial.item[keyB]
  else if (keyA == "B")
    Send % dkInvertedBreve.item[keyB]
  else if (keyA == "'")
    Send % dkAcuteAccent.item[keyB]
  else if (keyA == chr(34))
    Send % dkDiaeresis.item[keyB]
  else if (keyA == "=")
    Send % dkDoubleAcute.item[keyB]
  else if (keyA == "+")
    Send % dkHorn.item[keyB]
  else if (keyA == "``")
    Send % dkGraveAccent.item[keyB]
  else if (keyA == "G")
    Send % dkDoubleGrave.item[keyB]
  else if (keyA == "~")
    Send % dkTilde.item[keyB]

  keyA := ""  ; avoids leaking content via debug properties
  keyB := ""  ; avoids leaking content via debug properties
  return
