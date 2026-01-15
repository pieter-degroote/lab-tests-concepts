#requires AutoHotkey v2

; US Intl AltGr dead keys (for AutoHotkey v2).ahk

; GitHub :   https://github.com/pieter-degroote/UltimateKEYS-testing

; License :  GNU General Public License Version 3


; Configuration :

; Keyboard layout :  US QWERTY



KeyHistory 0      ; disables the key history (for privacy and security)
ListLines False   ; omits recently executed lines from history (for privacy and security)

SendMode "Event"  ; allows chaining of customized key combinations

global gEndKeys := "{bs}{esc}"  ; ends dead key input on Backspace or Escape


; Dead Key :  Grave Accent

global dkGrave := Map()
dkGrave["a"] := "{u+00e0}"  ; (à) a with grave
dkGrave["A"] := "{u+00c0}"  ; (À) A with grave
dkGrave["e"] := "{u+00e8}"  ; (è) e with grave
dkGrave["E"] := "{u+00c8}"  ; (È) E with grave
dkGrave["i"] := "{u+00ec}"  ; (ì) i with grave
dkGrave["I"] := "{u+00cc}"  ; (Ì) I with grave
dkGrave["n"] := "{u+01f9}"  ; (ǹ) n with grave
dkGrave["N"] := "{u+01f8}"  ; (Ǹ) N with grave
dkGrave["o"] := "{u+00f2}"  ; (ò) o with grave
dkGrave["O"] := "{u+00d2}"  ; (Ò) O with grave
dkGrave["u"] := "{u+00f9}"  ; (ù) u with grave
dkGrave["U"] := "{u+00d9}"  ; (Ù) U with grave
dkGrave["w"] := "{u+1e81}"  ; (ẁ) w with grave
dkGrave["W"] := "{u+1e80}"  ; (Ẁ) W with grave
dkGrave["y"] := "{u+1ef3}"  ; (ỳ) y with grave
dkGrave["Y"] := "{u+1ef2}"  ; (Ỳ) Y with grave
dkGrave[" "] := "{u+0060}"  ; (`) grave accent


; Dead Key :  Tilde

global dkTilde := Map()
dkTilde["a"] := "{u+00e3}"  ; (ã) a with tilde
dkTilde["A"] := "{u+00c3}"  ; (Ã) A with tilde
dkTilde["e"] := "{u+1ebd}"  ; (ẽ) e with tilde
dkTilde["E"] := "{u+1ebc}"  ; (Ẽ) E with tilde
dkTilde["i"] := "{u+0129}"  ; (ĩ) i with tilde
dkTilde["I"] := "{u+0128}"  ; (Ĩ) I with tilde
dkTilde["l"] := "{u+026b}"  ; (ɫ) l with middle tilde
dkTilde["L"] := "{u+2c62}"  ; (Ɫ) L with middle tilde
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
dkTilde[" "] := "{u+007e}"  ; (~) tilde


; Dead Key :  Double Acute Accent

global dkDoubleAcute := Map()
dkDoubleAcute["g"] := "{u+1e21}"  ; (ḡ) g with macron
dkDoubleAcute["G"] := "{u+1e20}"  ; (Ḡ) G with macron
dkDoubleAcute["i"] := "{u+0268}"  ; (ɨ) i with stroke
dkDoubleAcute["I"] := "{u+0197}"  ; (Ɨ) I with stroke
dkDoubleAcute["l"] := "{u+019a}"  ; (ƚ) l with bar
dkDoubleAcute["L"] := "{u+023d}"  ; (Ƚ) L with bar
dkDoubleAcute["o"] := "{u+0151}"  ; (ő) o with double acute
dkDoubleAcute["O"] := "{u+0150}"  ; (Ő) O with double acute
dkDoubleAcute["p"] := "{u+0275}"  ; (ɵ) barred o
dkDoubleAcute["P"] := "{u+019f}"  ; (Ɵ) O with middle tilde
dkDoubleAcute["u"] := "{u+0171}"  ; (ű) u with double acute
dkDoubleAcute["U"] := "{u+0170}"  ; (Ű) U with double acute
dkDoubleAcute["v"] := "{u+0289}"  ; (ʉ) u with bar
dkDoubleAcute["V"] := "{u+0244}"  ; (Ʉ) U with bar
dkDoubleAcute["y"] := "{u+024f}"  ; (ɏ) y with stroke
dkDoubleAcute["Y"] := "{u+024e}"  ; (Ɏ) Y with stroke
dkDoubleAcute[" "] := "{u+02dd}"  ; (˝) double acute accent


; Dead Key :  Macron and Stroke

global dkMacronStroke := Map()
dkMacronStroke["a"] := "{u+0101}"  ; (ā) a with macron
dkMacronStroke["A"] := "{u+0100}"  ; (Ā) A with macron
dkMacronStroke["b"] := "{u+0180}"  ; (ƀ) b with stroke
dkMacronStroke["B"] := "{u+0243}"  ; (Ƀ) B with stroke
dkMacronStroke["d"] := "{u+0111}"  ; (đ) d with stroke
dkMacronStroke["D"] := "{u+0110}"  ; (Đ) D with stroke
dkMacronStroke["e"] := "{u+0113}"  ; (ē) e with macron
dkMacronStroke["E"] := "{u+0112}"  ; (Ē) E with macron
dkMacronStroke["g"] := "{u+01e5}"  ; (ǥ) g with stroke
dkMacronStroke["G"] := "{u+01e4}"  ; (Ǥ) G with stroke
dkMacronStroke["h"] := "{u+0127}"  ; (ħ) h with stroke
dkMacronStroke["H"] := "{u+0126}"  ; (Ħ) H with stroke
dkMacronStroke["i"] := "{u+012b}"  ; (ī) i with macron
dkMacronStroke["I"] := "{u+012a}"  ; (Ī) I with macron
dkMacronStroke["j"] := "{u+0249}"  ; (ɉ) j with stroke
dkMacronStroke["J"] := "{u+0248}"  ; (Ɉ) J with stroke
dkMacronStroke["l"] := "{u+0142}"  ; (ł) l with stroke
dkMacronStroke["L"] := "{u+0141}"  ; (Ł) L with stroke
dkMacronStroke["o"] := "{u+014d}"  ; (ō) o with macron
dkMacronStroke["O"] := "{u+014c}"  ; (Ō) O with macron
dkMacronStroke["p"] := "{u+1d7d}"  ; (ᵽ) p with stroke
dkMacronStroke["P"] := "{u+2c63}"  ; (Ᵽ) P with stroke
dkMacronStroke["q"] := "{u+01ed}"  ; (ǭ) o with ogonek and macron
dkMacronStroke["Q"] := "{u+01ec}"  ; (Ǭ) O with ogonek and macron
dkMacronStroke["r"] := "{u+024d}"  ; (ɍ) r with stroke
dkMacronStroke["R"] := "{u+024c}"  ; (Ɍ) R with stroke
dkMacronStroke["t"] := "{u+0167}"  ; (ŧ) t with stroke
dkMacronStroke["T"] := "{u+0166}"  ; (Ŧ) T with stroke
dkMacronStroke["u"] := "{u+016b}"  ; (ū) u with macron
dkMacronStroke["U"] := "{u+016a}"  ; (Ū) U with macron
dkMacronStroke["y"] := "{u+0233}"  ; (ȳ) y with macron
dkMacronStroke["Y"] := "{u+0232}"  ; (Ȳ) Y with macron
dkMacronStroke["z"] := "{u+01b6}"  ; (ƶ) z with stroke
dkMacronStroke["Z"] := "{u+01b5}"  ; (Ƶ) Z with stroke
dkMacronStroke[chr(0x00e6)] := "{u+01e3}"  ; (æ -> ǣ) ae with macron
dkMacronStroke[chr(0x00c6)] := "{u+01e2}"  ; (Æ -> Ǣ) AE with macron
dkMacronStroke[" "] := "{u+00af}"  ; (¯) macron


; Dead Key :  Cedilla and Ogonek

global dkCedillaOgonek := Map()
dkCedillaOgonek["a"] := "{u+0105}"  ; (ą) a with ogonek
dkCedillaOgonek["A"] := "{u+0104}"  ; (Ą) A with ogonek
dkCedillaOgonek["c"] := "{u+00e7}"  ; (ç) c with cedilla
dkCedillaOgonek["C"] := "{u+00c7}"  ; (Ç) C with cedilla
dkCedillaOgonek["d"] := "{u+1e11}"  ; (ḑ) d with cedilla
dkCedillaOgonek["D"] := "{u+1e10}"  ; (Ḑ) D with cedilla
dkCedillaOgonek["e"] := "{u+0119}"  ; (ę) e with ogonek
dkCedillaOgonek["E"] := "{u+0118}"  ; (Ę) E with ogonek
dkCedillaOgonek["f"] := "{u+0229}"  ; (ȩ) e with cedilla
dkCedillaOgonek["F"] := "{u+0228}"  ; (Ȩ) E with cedilla
dkCedillaOgonek["g"] := "{u+0123}"  ; (ģ) g with cedilla
dkCedillaOgonek["G"] := "{u+0122}"  ; (Ģ) G with cedilla
dkCedillaOgonek["h"] := "{u+1e29}"  ; (ḩ) h with cedilla
dkCedillaOgonek["H"] := "{u+1e28}"  ; (Ḩ) H with cedilla
dkCedillaOgonek["i"] := "{u+012f}"  ; (į) i with ogonek
dkCedillaOgonek["I"] := "{u+012e}"  ; (Į) I with ogonek
dkCedillaOgonek["k"] := "{u+0137}"  ; (ķ) k with cedilla
dkCedillaOgonek["K"] := "{u+0136}"  ; (Ķ) K with cedilla
dkCedillaOgonek["l"] := "{u+013c}"  ; (ļ) l with cedilla
dkCedillaOgonek["L"] := "{u+013b}"  ; (Ļ) L with cedilla
dkCedillaOgonek["n"] := "{u+0146}"  ; (ņ) n with cedilla
dkCedillaOgonek["N"] := "{u+0145}"  ; (Ņ) N with cedilla
dkCedillaOgonek["o"] := "{u+01eb}"  ; (ǫ) o with ogonek
dkCedillaOgonek["O"] := "{u+01ea}"  ; (Ǫ) O with ogonek
dkCedillaOgonek["q"] := "{u+01ed}"  ; (ǭ) o with ogonek and macron
dkCedillaOgonek["Q"] := "{u+01ec}"  ; (Ǭ) O with ogonek and macron
dkCedillaOgonek["r"] := "{u+0157}"  ; (ŗ) r with cedilla
dkCedillaOgonek["R"] := "{u+0156}"  ; (Ŗ) R with cedilla
dkCedillaOgonek["s"] := "{u+015f}"  ; (ş) s with cedilla
dkCedillaOgonek["S"] := "{u+015e}"  ; (Ş) S with cedilla
dkCedillaOgonek["t"] := "{u+0163}"  ; (ţ) t with cedilla
dkCedillaOgonek["T"] := "{u+0162}"  ; (Ţ) T with cedilla
dkCedillaOgonek["u"] := "{u+0173}"  ; (ų) u with ogonek
dkCedillaOgonek["U"] := "{u+0172}"  ; (Ų) U with ogonek
dkCedillaOgonek[" "] := "{u+00b8}"  ; (¸) cedilla


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
dkCircumflex[" "] := "{u+005e}"  ; (^) circumflex accent


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
dkCaron["3"] := "{u+01ef}"  ; (ǯ) small letter ezh with caron
dkCaron["#"] := "{u+01ee}"  ; (Ǯ) capital letter ezh with caron
dkCaron[" "] := "{u+02c7}"  ; (ˇ) caron


; Deak Key :  Hook, Horn and Variations

global dkHook := Map()
dkHook["b"] := "{u+0253}"  ; (ɓ) b with hook
dkHook["B"] := "{u+0181}"  ; (Ɓ) B with hook
dkHook["c"] := "{u+0188}"  ; (ƈ) c with hook
dkHook["C"] := "{u+0187}"  ; (Ƈ) C with hook
dkHook["d"] := "{u+0257}"  ; (ɗ) d with hook
dkHook["D"] := "{u+018a}"  ; (Ɗ) D with hook
dkHook["e"] := "{u+025a}"  ; (ɚ) small letter schwa with hook
dkHook["f"] := "{u+0192}"  ; (ƒ) f with hook
dkHook["F"] := "{u+0191}"  ; (Ƒ) F with hook
dkHook["g"] := "{u+0260}"  ; (ɠ) g with hook
dkHook["G"] := "{u+0193}"  ; (Ɠ) G with hook
dkHook["h"] := "{u+0266}"  ; (ɦ) h with hook
dkHook["H"] := "{u+a7aa}"  ; (Ɦ) H with hook
dkHook["j"] := "{u+0267}"  ; (ɧ) small letter heng with hook
dkHook["k"] := "{u+0199}"  ; (ƙ) k with hook
dkHook["K"] := "{u+0198}"  ; (Ƙ) K with hook
dkHook["l"] := "{u+026c}"  ; (ɬ) l with belt
dkHook["L"] := "{u+a7ad}"  ; (Ɬ) L with belt
dkHook["m"] := "{u+0271}"  ; (ɱ) m with hook
dkHook["M"] := "{u+2c6e}"  ; (Ɱ) M with hook
dkHook["n"] := "{u+0272}"  ; (ɲ) n with left hook
dkHook["N"] := "{u+019d}"  ; (Ɲ) N with left hook
dkHook["o"] := "{u+01a1}"  ; (ơ) o with horn
dkHook["O"] := "{u+01a0}"  ; (Ơ) O with horn
dkHook["p"] := "{u+01a5}"  ; (ƥ) p with hook
dkHook["P"] := "{u+01a4}"  ; (Ƥ) P with hook
dkHook["q"] := "{u+024b}"  ; (ɋ) q with hook tail
dkHook["Q"] := "{u+024a}"  ; (Ɋ) Q with hook tail
dkHook["r"] := "{u+027d}"  ; (ɽ) r with tail
dkHook["R"] := "{u+2c64}"  ; (Ɽ) R with tail
dkHook["s"] := "{u+0282}"  ; (ʂ) s with hook
dkHook["t"] := "{u+01ad}"  ; (ƭ) t with hook
dkHook["T"] := "{u+01ac}"  ; (Ƭ) T with hook
dkHook["u"] := "{u+01b0}"  ; (ư) u with horn
dkHook["U"] := "{u+01af}"  ; (Ư) U with horn
dkHook["v"] := "{u+028b}"  ; (ʋ) v with hook
dkHook["V"] := "{u+01b2}"  ; (Ʋ) V with hook
dkHook["w"] := "{u+2c73}"  ; (ⱳ) w with hook
dkHook["W"] := "{u+2c72}"  ; (Ⱳ) W with hook
dkHook["y"] := "{u+01b4}"  ; (ƴ) y with hook
dkHook["Y"] := "{u+01b3}"  ; (Ƴ) Y with hook
dkHook["z"] := "{u+0225}"  ; (ȥ) z with hook
dkHook["Z"] := "{u+0224}"  ; (Ȥ) Z with hook


; Dead Key :  Breve and Special Letters

global dkBreveSpecial := Map()
dkBreveSpecial["a"] := "{u+0103}"  ; (ă) a with breve
dkBreveSpecial["A"] := "{u+0102}"  ; (Ă) A with breve
dkBreveSpecial["d"] := "{u+0256}"  ; (ɖ) small letter d with tail
dkBreveSpecial["D"] := "{u+0189}"  ; (Ɖ) capital letter African D
dkBreveSpecial["e"] := "{u+0115}"  ; (ĕ) e with breve
dkBreveSpecial["E"] := "{u+0114}"  ; (Ĕ) E with breve
dkBreveSpecial["f"] := "{u+0259}"  ; (ə) small letter schwa
dkBreveSpecial["F"] := "{u+018f}"  ; (Ə) capital letter schwa
dkBreveSpecial["g"] := "{u+011f}"  ; (ğ) g with breve
dkBreveSpecial["G"] := "{u+011e}"  ; (Ğ) G with breve
dkBreveSpecial["i"] := "{u+012d}"  ; (ĭ) i with breve
dkBreveSpecial["I"] := "{u+012c}"  ; (Ĭ) I with breve
dkBreveSpecial["j"] := "{u+0133}"  ; (ĳ) ligature ij
dkBreveSpecial["J"] := "{u+0132}"  ; (Ĳ) ligature IJ
dkBreveSpecial["n"] := "{u+014b}"  ; (ŋ) small letter eng(ma)
dkBreveSpecial["N"] := "{u+014a}"  ; (Ŋ) capital letter eng(ma)
dkBreveSpecial["o"] := "{u+014f}"  ; (ŏ) o with breve
dkBreveSpecial["O"] := "{u+014e}"  ; (Ŏ) O with breve
dkBreveSpecial["s"] := "{u+0219}"  ; (ș) s with comma below
dkBreveSpecial["S"] := "{u+0218}"  ; (Ș) S with comma below
dkBreveSpecial["t"] := "{u+021b}"  ; (ț) t with comma below
dkBreveSpecial["T"] := "{u+021a}"  ; (Ț) T with comma below
dkBreveSpecial["u"] := "{u+016d}"  ; (ŭ) u with breve
dkBreveSpecial["U"] := "{u+016c}"  ; (Ŭ) U with breve
dkBreveSpecial["3"] := "{u+0292}"  ; (ʒ) small letter ezh
dkBreveSpecial["#"] := "{u+01b7}"  ; (Ʒ) capital letter ezh
dkBreveSpecial[chr(0x00df)] := "{u+1e9e}"  ; (ß -> ẞ) capital sharp S (capital Eszett)
dkBreveSpecial[" "] := "{u+02d8}"  ; (˘) breve


; Dead Key :  Dot Above

global dkDotAbove := Map()
dkDotAbove["a"] := "{u+0227}"  ; (ȧ) a with dot above
dkDotAbove["A"] := "{u+0226}"  ; (Ȧ) A with dot above
dkDotAbove["b"] := "{u+1e03}"  ; (ḃ) b with dot above
dkDotAbove["B"] := "{u+1e02}"  ; (Ḃ) B with dot above
dkDotAbove["c"] := "{u+010b}"  ; (ċ) c with dot above
dkDotAbove["C"] := "{u+010a}"  ; (Ċ) C with dot above
dkDotAbove["d"] := "{u+1e0b}"  ; (ḋ) d with dot above
dkDotAbove["D"] := "{u+1e0a}"  ; (Ḋ) D with dot above
dkDotAbove["e"] := "{u+0117}"  ; (ė) e with dot above
dkDotAbove["E"] := "{u+0116}"  ; (Ė) E with dot above
dkDotAbove["f"] := "{u+1e1f}"  ; (ḟ) f with dot above
dkDotAbove["F"] := "{u+1e1e}"  ; (Ḟ) F with dot above
dkDotAbove["g"] := "{u+0121}"  ; (ġ) g with dot above
dkDotAbove["G"] := "{u+0120}"  ; (Ġ) G with dot above
dkDotAbove["h"] := "{u+1e23}"  ; (ḣ) h with dot above
dkDotAbove["H"] := "{u+1e22}"  ; (Ḣ) H with dot above
dkDotAbove["i"] := "{u+0131}"  ; (ı) dotless i
dkDotAbove["I"] := "{u+0130}"  ; (İ) I with dot above
dkDotAbove["j"] := "{u+0237}"  ; (ȷ) dotless j
dkDotAbove["l"] := "{u+0140}"  ; (ŀ) l with middle dot
dkDotAbove["L"] := "{u+013f}"  ; (Ŀ) L with middle dot
dkDotAbove["m"] := "{u+1e41}"  ; (ṁ) m with dot above
dkDotAbove["M"] := "{u+1e40}"  ; (Ṁ) M with dot above
dkDotAbove["n"] := "{u+1e45}"  ; (ṅ) n with dot above
dkDotAbove["N"] := "{u+1e44}"  ; (Ṅ) N with dot above
dkDotAbove["o"] := "{u+022f}"  ; (ȯ) o with dot above
dkDotAbove["O"] := "{u+022e}"  ; (Ȯ) O with dot above
dkDotAbove["p"] := "{u+1e57}"  ; (ṗ) p with dot above
dkDotAbove["P"] := "{u+1e56}"  ; (Ṗ) P with dot above
dkDotAbove["r"] := "{u+1e59}"  ; (ṙ) r with dot above
dkDotAbove["R"] := "{u+1e58}"  ; (Ṙ) R with dot above
dkDotAbove["s"] := "{u+1e61}"  ; (ṡ) s with dot above
dkDotAbove["S"] := "{u+1e60}"  ; (Ṡ) S with dot above
dkDotAbove["t"] := "{u+1e6b}"  ; (ṫ) t with dot above
dkDotAbove["T"] := "{u+1e6a}"  ; (Ṫ) T with dot above
dkDotAbove["u"] := "{u+016f}"  ; (ů) u with ring above
dkDotAbove["U"] := "{u+016e}"  ; (Ů) U with ring above
dkDotAbove["w"] := "{u+1e87}"  ; (ẇ) w with dot above
dkDotAbove["W"] := "{u+1e86}"  ; (Ẇ) W with dot above
dkDotAbove["x"] := "{u+1e8b}"  ; (ẋ) x with dot above
dkDotAbove["X"] := "{u+1e8a}"  ; (Ẋ) X with dot above
dkDotAbove["y"] := "{u+1e8f}"  ; (ẏ) y with dot above
dkDotAbove["Y"] := "{u+1e8e}"  ; (Ẏ) Y with dot above
dkDotAbove["z"] := "{u+017c}"  ; (ż) z with dot above
dkDotAbove["Z"] := "{u+017b}"  ; (Ż) Z with dot above
dkDotAbove[" "] := "{u+02d9}"  ; (˙) dot above


; Dead Key :  Dot Below

global dkDotBelow := Map()
dkDotBelow["a"] := "{u+1ea1}"  ; (ạ) a with dot below
dkDotBelow["A"] := "{u+1ea0}"  ; (Ạ) A with dot below
dkDotBelow["b"] := "{u+1e05}"  ; (ḅ) b with dot below
dkDotBelow["B"] := "{u+1e04}"  ; (Ḅ) B with dot below
dkDotBelow["d"] := "{u+1e0d}"  ; (ḍ) d with dot below
dkDotBelow["D"] := "{u+1e0c}"  ; (Ḍ) D with dot below
dkDotBelow["e"] := "{u+1eb9}"  ; (ẹ) e with dot below
dkDotBelow["E"] := "{u+1eb8}"  ; (Ẹ) E with dot below
dkDotBelow["h"] := "{u+1e25}"  ; (ḥ) h with dot below
dkDotBelow["H"] := "{u+1e24}"  ; (Ḥ) H with dot below
dkDotBelow["i"] := "{u+1ecb}"  ; (ị) i with dot below
dkDotBelow["I"] := "{u+1eca}"  ; (Ị) I with dot below
dkDotBelow["k"] := "{u+1e33}"  ; (ḳ) k with dot below
dkDotBelow["K"] := "{u+1e32}"  ; (Ḳ) K with dot below
dkDotBelow["l"] := "{u+1e37}"  ; (ḷ) l with dot below
dkDotBelow["L"] := "{u+1e36}"  ; (Ḷ) L with dot below
dkDotBelow["m"] := "{u+1e43}"  ; (ṃ) m with dot below
dkDotBelow["M"] := "{u+1e42}"  ; (Ṃ) M with dot below
dkDotBelow["n"] := "{u+1e47}"  ; (ṇ) n with dot below
dkDotBelow["N"] := "{u+1e46}"  ; (Ṇ) N with dot below
dkDotBelow["o"] := "{u+1ecd}"  ; (ọ) o with dot below
dkDotBelow["O"] := "{u+1ecc}"  ; (Ọ) O with dot below
dkDotBelow["r"] := "{u+1e5b}"  ; (ṛ) r with dot below
dkDotBelow["R"] := "{u+1e5a}"  ; (Ṛ) R with dot below
dkDotBelow["s"] := "{u+1e63}"  ; (ṣ) s with dot below
dkDotBelow["S"] := "{u+1e62}"  ; (Ṣ) S with dot below
dkDotBelow["t"] := "{u+1e6d}"  ; (ṭ) t with dot below
dkDotBelow["T"] := "{u+1e6c}"  ; (Ṭ) T with dot below
dkDotBelow["u"] := "{u+1ee5}"  ; (ụ) u with dot below
dkDotBelow["U"] := "{u+1ee4}"  ; (Ụ) U with dot below
dkDotBelow["v"] := "{u+1e7f}"  ; (ṿ) v with dot below
dkDotBelow["V"] := "{u+1e7e}"  ; (Ṿ) V with dot below
dkDotBelow["w"] := "{u+1e89}"  ; (ẉ) w with dot below
dkDotBelow["W"] := "{u+1e88}"  ; (Ẉ) W with dot below
dkDotBelow["y"] := "{u+1ef5}"  ; (ỵ) y with dot below
dkDotBelow["Y"] := "{u+1ef4}"  ; (Ỵ) Y with dot below
dkDotBelow["z"] := "{u+1e93}"  ; (ẓ) z with dot below
dkDotBelow["Z"] := "{u+1e92}"  ; (Ẓ) Z with dot below


; Dead Key :  Acute Accent

global dkAcute := Map()
dkAcute["a"] := "{u+00e1}"  ; (á) a with acute
dkAcute["A"] := "{u+00c1}"  ; (Á) A with acute
dkAcute["c"] := "{u+0107}"  ; (ć) c with acute
dkAcute["C"] := "{u+0106}"  ; (Ć) C with acute
dkAcute["e"] := "{u+00e9}"  ; (é) e with acute
dkAcute["E"] := "{u+00c9}"  ; (É) E with acute
dkAcute["g"] := "{u+01f5}"  ; (ǵ) g with acute
dkAcute["G"] := "{u+01f4}"  ; (Ǵ) G with acute
dkAcute["i"] := "{u+00ed}"  ; (í) i with acute
dkAcute["I"] := "{u+00cd}"  ; (Í) I with acute
dkAcute["k"] := "{u+1e31}"  ; (ḱ) k with acute
dkAcute["K"] := "{u+1e30}"  ; (Ḱ) K with acute
dkAcute["l"] := "{u+013a}"  ; (ĺ) l with acute
dkAcute["L"] := "{u+0139}"  ; (Ĺ) L with acute
dkAcute["m"] := "{u+1e3f}"  ; (ḿ) m with acute
dkAcute["M"] := "{u+1e3e}"  ; (Ḿ) M with acute
dkAcute["n"] := "{u+0144}"  ; (ń) n with acute
dkAcute["N"] := "{u+0143}"  ; (Ń) N with acute
dkAcute["o"] := "{u+00f3}"  ; (ó) o with acute
dkAcute["O"] := "{u+00d3}"  ; (Ó) O with acute
dkAcute["p"] := "{u+1e55}"  ; (ṕ) p with acute
dkAcute["P"] := "{u+1e54}"  ; (Ṕ) P with acute
dkAcute["r"] := "{u+0155}"  ; (ŕ) r with acute
dkAcute["R"] := "{u+0154}"  ; (Ŕ) R with acute
dkAcute["s"] := "{u+015b}"  ; (ś) s with acute
dkAcute["S"] := "{u+015a}"  ; (Ś) S with acute
dkAcute["u"] := "{u+00fa}"  ; (ú) u with acute
dkAcute["U"] := "{u+00da}"  ; (Ú) U with acute
dkAcute["w"] := "{u+1e83}"  ; (ẃ) w with acute
dkAcute["W"] := "{u+1e82}"  ; (Ẃ) W with acute
dkAcute["y"] := "{u+00fd}"  ; (ý) y with acute
dkAcute["Y"] := "{u+00dd}"  ; (Ý) Y with acute
dkAcute["z"] := "{u+017a}"  ; (ź) z with acute
dkAcute["Z"] := "{u+0179}"  ; (Ź) Z with acute
dkAcute[chr(0x00e5)] := "{u+01fb}"  ; (å -> ǻ) a with ring above and acute
dkAcute[chr(0x00c5)] := "{u+01fa}"  ; (Å -> Ǻ) A with ring above and acute
dkAcute[chr(0x00e6)] := "{u+01fd}"  ; (æ -> ǽ) ae with acute
dkAcute[chr(0x00c6)] := "{u+01fc}"  ; (Æ -> Ǽ) AE with acute
dkAcute[chr(0x00e7)] := "{u+1e09}"  ; (ç -> ḉ) c with cedilla and acute
dkAcute[chr(0x00c7)] := "{u+1e08}"  ; (Ç -> Ḉ) C with cedilla and acute
dkAcute[chr(0x00f8)] := "{u+01ff}"  ; (ø -> ǿ) o with stroke and acute
dkAcute[chr(0x00d8)] := "{u+01fe}"  ; (Ø -> Ǿ) O with stroke and acute
dkAcute[" "] := "{u+00b4}"  ; (´) acute accent


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


; Configuration :  US QWERTY re-assignments (KBDUSX)

+sc007::Send "{u+005e}"     ; (^) circumflex accent

sc028::Send "{u+0027}"      ; (') apostrophe
+sc028::Send "{u+0022}"     ; (") quotation mark

sc029::Send "{u+0060}"      ; (`) grave accent
+sc029::Send "{u+007e}"     ; (~) tilde

NumpadDot::Send "{u+002e}"  ; (.) period


; Configuration :  'AltGr (RAlt)' and 'AltGr (RAlt) + Shift' modifiers

; Key :  1
>!sc002::
<^>!sc002::Send "{u+00a1}"   ; (¡) inverted exclamation mark
>!+sc002::
<^>!+sc002::Send "{u+00b9}"  ; (¹) superscript 1

; Key :  2
>!sc003::
<^>!sc003::Send "{u+00b2}"   ; (²) superscript 2
>!+sc003::
<^>!+sc003:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDoubleAcute.Has(ih.Input)
    Send dkDoubleAcute[ih.Input]
}

; Key :  3
>!sc004::
<^>!sc004::Send "{u+00b3}"   ; (³) superscript 3
>!+sc004::
<^>!+sc004:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkMacronStroke.Has(ih.Input)
    Send dkMacronStroke[ih.Input]
}

; Key :  4
>!sc005::
<^>!sc005::Send "{u+00a3}"   ; (£) pound sign
>!+sc005::
<^>!+sc005::Send "{u+00a4}"  ; (¤) currency sign

; Key :  5
>!sc006::
<^>!sc006::Send "{u+20ac}"   ; (€) euro sign
>!+sc006::
<^>!+sc006:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCedillaOgonek.Has(ih.Input)
    Send dkCedillaOgonek[ih.Input]
}

; Key :  6
>!sc007::
<^>!sc007:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCircumflex.Has(ih.Input)
    Send dkCircumflex[ih.Input]
}
>!+sc007::
<^>!+sc007:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkCaron.Has(ih.Input)
    Send dkCaron[ih.Input]
}

; Key :  7
>!sc008::
<^>!sc008::Send "{u+00bd}"   ; (½) vulgar fraction 1/2
>!+sc008::
<^>!+sc008:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkHook.Has(ih.Input)
    Send dkHook[ih.Input]
}

; Key :  8
>!sc009::
<^>!sc009::Send "{u+00be}"   ; (¾) vulgar fraction 3/4
>!+sc009::
<^>!+sc009::Send "{u+00bc}"  ; (¼) vulgar fraction 1/4

; Key :  9
>!sc00A::
<^>!sc00A::Send "{u+2018}"   ; (‘) left single quotation mark
>!+sc00A::
<^>!+sc00A:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkBreveSpecial.Has(ih.Input)
    Send dkBreveSpecial[ih.Input]
}

; Key :  0
>!sc00B::
<^>!sc00B::Send "{u+2019}"   ; (’) right single quotation mark
>!+sc00B::
<^>!+sc00B:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDotAbove.Has(ih.Input)
    Send dkDotAbove[ih.Input]
}

; Key :  - / _ (hyphen-minus / underscore)
>!sc00C::
<^>!sc00C::Send "{u+00a5}"   ; (¥) yen sign
>!+sc00C::
<^>!+sc00C:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDotBelow.Has(ih.Input)
    Send dkDotBelow[ih.Input]
}

; Key :  = / + (equals sign / plus sign)
>!sc00D::
<^>!sc00D::Send "{u+00d7}"   ; (×) multiplication sign
>!+sc00D::
<^>!+sc00D::Send "{u+00f7}"  ; (÷) division sign

; Key :  Q
>!sc010::
<^>!sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c4}"  ; (Ä) A with diaeresis
  else
    Send "{u+00e4}"  ; (ä) a with diaeresis
}
>!+sc010::
<^>!+sc010:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e4}"  ; (ä) a with diaeresis
  else
    Send "{u+00c4}"  ; (Ä) A with diaeresis
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
    Send "{u+00c9}"  ; (É) E with acute
  else
    Send "{u+00e9}"  ; (é) e with acute
}
>!+sc012::
<^>!+sc012:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e9}"  ; (é) e with acute
  else
    Send "{u+00c9}"  ; (É) E with acute
}

; Key :  R
>!sc013::
<^>!sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cb}"  ; (Ë) E with diaeresis
  else
    Send "{u+00eb}"  ; (ë) e with diaeresis
}
>!+sc013::
<^>!+sc013:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00eb}"  ; (ë) e with diaeresis
  else
    Send "{u+00cb}"  ; (Ë) E with diaeresis
}

; Key :  T
>!sc014::
<^>!sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00de}"  ; (Þ) capital letter thorn
  else
    Send "{u+00fe}"  ; (þ) small letter thorn
}
>!+sc014::
<^>!+sc014:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fe}"  ; (þ) small letter thorn
  else
    Send "{u+00de}"  ; (Þ) capital letter thorn
}

; Key :  Y
>!sc015::
<^>!sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00dc}"  ; (Ü) U with diaeresis
  else
    Send "{u+00fc}"  ; (ü) u with diaeresis
}
>!+sc015::
<^>!+sc015:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fc}"  ; (ü) u with diaeresis
  else
    Send "{u+00dc}"  ; (Ü) U with diaeresis
}

; Key :  U
>!sc016::
<^>!sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00da}"  ; (Ú) U with acute
  else
    Send "{u+00fa}"  ; (ú) u with acute
}
>!+sc016::
<^>!+sc016:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00fa}"  ; (ú) u with acute
  else
    Send "{u+00da}"  ; (Ú) U with acute
}

; Key :  I
>!sc017::
<^>!sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cd}"  ; (Í) I with acute
  else
    Send "{u+00ed}"  ; (í) i with acute
}
>!+sc017::
<^>!+sc017:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ed}"  ; (í) i with acute
  else
    Send "{u+00cd}"  ; (Í) I with acute
}

; Key :  O
>!sc018::
<^>!sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d3}"  ; (Ó) O with acute
  else
    Send "{u+00f3}"  ; (ó) o with acute
}
>!+sc018::
<^>!+sc018:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f3}"  ; (ó) o with acute
  else
    Send "{u+00d3}"  ; (Ó) O with acute
}

; Key :  P
>!sc019::
<^>!sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d6}"  ; (Ö) O with diaeresis
  else
    Send "{u+00f6}"  ; (ö) o with diaeresis
}
>!+sc019::
<^>!+sc019:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f6}"  ; (ö) o with diaeresis
  else
    Send "{u+00d6}"  ; (Ö) O with diaeresis
}

; Key :  [ / { (left square bracket / left curly bracket)
>!sc01A::
<^>!sc01A::Send "{u+00ab}"   ; («) left-pointing double angle quotation mark
>!+sc01A::
<^>!+sc01A::Send "{u+201c}"  ; (“) left double quotation mark

; Key :  ] / } (right square bracket / right curly bracket)
>!sc01B::
<^>!sc01B::Send "{u+00bb}"   ; (») right-pointing double angle quotation mark
>!+sc01B::
<^>!+sc01B::Send "{u+201d}"  ; (”) right double quotation mark

; Key :  A
>!sc01E::
<^>!sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c1}"  ; (Á) A with acute
  else
    Send "{u+00e1}"  ; (á) a with acute
}
>!+sc01E::
<^>!+sc01E:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e1}"  ; (á) a with acute
  else
    Send "{u+00c1}"  ; (Á) A with acute
}

; Key :  S
>!sc01F::
<^>!sc01F::Send "{u+00df}"   ; (ß) small sharp s (Eszett)
>!+sc01F::
<^>!+sc01F::Send "{u+00a7}"  ; (§) section sign

; Key :  D
>!sc020::
<^>!sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00d0}"  ; (Ð) capital letter eth
  else
    Send "{u+00f0}"  ; (ð) small letter eth
}
>!+sc020::
<^>!+sc020:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00f0}"  ; (ð) small letter eth
  else
    Send "{u+00d0}"  ; (Ð) capital letter eth
}

; Key :  J
>!sc024::
<^>!sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00cf}"  ; (Ï) I with diaeresis
  else
    Send "{u+00ef}"  ; (ï) i with diaeresis
}
>!+sc024::
<^>!+sc024:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00ef}"  ; (ï) i with diaeresis
  else
    Send "{u+00cf}"  ; (Ï) I with diaeresis
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
<^>!sc028:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkAcute.Has(ih.Input)
    Send dkAcute[ih.Input]
}
>!+sc028::
<^>!+sc028:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkDiaeresis.Has(ih.Input)
    Send dkDiaeresis[ih.Input]
}

; Key :  ` / ~ (grave accent / tilde)
>!sc029::
<^>!sc029:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkGrave.Has(ih.Input)
    Send dkGrave[ih.Input]
}
>!+sc029::
<^>!+sc029:: {
  ih := InputHook("L1", gEndKeys)
  ih.Start(), ih.Wait()
  if dkTilde.Has(ih.Input)
    Send dkTilde[ih.Input]
}

; Key :  \ / | (backslash / vertical line)
>!sc02B::
<^>!sc02B::Send "{u+00ac}"   ; (¬) not sign
>!+sc02B::
<^>!+sc02B::Send "{u+00a6}"  ; (¦) broken bar

; Key :  Z
>!sc02C::
<^>!sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00c6}"  ; (Æ) letter AE
  else
    Send "{u+00e6}"  ; (æ) letter ae
}
>!+sc02C::
<^>!+sc02C:: {
  if GetKeyState("CapsLock", "T")
    Send "{u+00e6}"  ; (æ) letter ae
  else
    Send "{u+00c6}"  ; (Æ) letter AE
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
<^>!sc033::Send "{u+00a9}"   ; (©) copyright sign
>!+sc033::
<^>!+sc033::Send "{u+00a2}"  ; (¢) cent sign (dollar)

; Key :  . / > (period / greater-than sign)
>!sc034::
<^>!sc034::Send "{u+00ae}"   ; (®) registered sign
>!+sc034::
<^>!+sc034::Send "{u+2122}"  ; (™) trademark symbol

; Key :  / / ? (slash / question mark)
>!sc035::
<^>!sc035::Send "{u+00bf}"   ; (¿) inverted question mark
>!+sc035::
<^>!+sc035::Send "{u+00b6}"  ; (¶) pilcrow sign

; Key :  (space)
>!sc039::
<^>!sc039::Send "{u+00a0}"   ; non-breaking space (NBSP)
>!+sc039::
<^>!+sc039::Send "{u+00a0}"  ; non-breaking space (NBSP)
