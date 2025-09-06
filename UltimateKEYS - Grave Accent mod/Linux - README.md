# UltimateKEYS - Grave Accent mod (Linux)

This version features a dead key on the grave accent (upper-left key) and on the ISO key (if present).

These keys allow the user to enter most of the diacritics and symbols as the AltGr (Right Alt) modifier already does (for the main layout).

## 1. Add the following code to the top or bottom of the regular ".XCompose" from UltimateKEYS

```
# Dead Key :  Grave Accent

<dead_grave> <asciitilde>   : " "  U00A0  # non-breaking space
<dead_grave> <1>            : "¡"  U00A1  # inverted exclamation mark
<dead_grave> <exclam>       : "¹"  U00B9  # superscript 1
<dead_grave> <2>            : "²"  U00B2  # superscript 2
<dead_grave> <at>           : "♫"  U266B  # beamed eighth notes
<dead_grave> <3>            : "³"  U00B3  # superscript 3
<dead_grave> <numbersign>   : "§"  U00A7  # section sign
<dead_grave> <4>            : "£"  U00A3  # pound sign
<dead_grave> <dollar>       : "¥"  U00A5  # yen sign
<dead_grave> <5>            : "€"  U20AC  # euro sign
<dead_grave> <percent>      : "¢"  U00A2  # cent sign (dollar)
<dead_grave> <6>            : "í"  U00ED  # i with acute
<dead_grave> <asciicircum>  : "Í"  U00CD  # I with acute
<dead_grave> <7>            : "ì"  U00EC  # i with grave
<dead_grave> <ampersand>    : "Ì"  U00CC  # I with grave
<dead_grave> <8>            : "„"  U201E  # double low-9 quotation mark
<dead_grave> <asterisk>     : "♪"  U266A  # eighth note
<dead_grave> <9>            : "“"  U201C  # left double quotation mark
<dead_grave> <parenleft>    : "‘"  U2018  # left single quotation mark
<dead_grave> <0>            : "”"  U201D  # right double quotation mark
<dead_grave> <parenright>   : "’"  U2019  # right single quotation mark
<dead_grave> <minus>        : "–"  U2013  # en dash
<dead_grave> <underscore>   : "—"  U2014  # em dash
<dead_grave> <equal>        : "×"  U00D7  # multiplication sign
<dead_grave> <plus>         : "÷"  U00F7  # division sign
<dead_grave> <q>            : "æ"  U00E6  # letter ae
<dead_grave> <Q>            : "Æ"  U00C6  # letter AE
<dead_grave> <w>            : "å"  U00E5  # a with ring above
<dead_grave> <W>            : "Å"  U00C5  # A with ring above
<dead_grave> <e>            : "ë"  U00EB  # e with diaeresis
<dead_grave> <E>            : "Ë"  U00CB  # E with diaeresis
<dead_grave> <r>            : "ê"  U00EA  # e with circumflex
<dead_grave> <R>            : "Ê"  U00CA  # E with circumflex
<dead_grave> <t>            : "î"  U00EE  # i with circumflex
<dead_grave> <T>            : "Î"  U00CE  # I with circumflex
<dead_grave> <y>            : "û"  U00FB  # u with circumflex
<dead_grave> <Y>            : "Û"  U00DB  # U with circumflex
<dead_grave> <u>            : "ü"  U00FC  # u with diaeresis
<dead_grave> <U>            : "Ü"  U00DC  # U with diaeresis
<dead_grave> <i>            : "ï"  U00EF  # i with diaeresis
<dead_grave> <I>            : "Ï"  U00CF  # I with diaeresis
<dead_grave> <o>            : "ö"  U00F6  # o with diaeresis
<dead_grave> <O>            : "Ö"  U00D6  # O with diaeresis
<dead_grave> <p>            : "ô"  U00F4  # o with circumflex
<dead_grave> <P>            : "Ô"  U00D4  # O with circumflex
<dead_grave> <bracketleft>  : "«"  U00AB  # left-pointing double angle quotation mark
<dead_grave> <braceleft>    : "‹"  U2039  # left-pointing single angle quotation mark
<dead_grave> <bracketright> : "»"  U00BB  # right-pointing double angle quotation mark
<dead_grave> <braceright>   : "›"  U203A  # right-pointing single angle quotation mark
<dead_grave> <a>            : "ä"  U00E4  # a with diaeresis
<dead_grave> <A>            : "Ä"  U00C4  # A with diaeresis
<dead_grave> <s>            : "ß"  U00DF  # small sharp s (Eszett)
<dead_grave> <S>            : "ẞ"  U1E9E  # capital sharp S (capital Eszett)
<dead_grave> <d>            : "â"  U00E2  # a with circumflex
<dead_grave> <D>            : "Â"  U00C2  # A with circumflex
<dead_grave> <f>            : "é"  U00E9  # e with acute
<dead_grave> <F>            : "É"  U00C9  # E with acute
<dead_grave> <g>            : "è"  U00E8  # e with grave
<dead_grave> <G>            : "È"  U00C8  # E with grave
<dead_grave> <h>            : "ú"  U00FA  # u with acute
<dead_grave> <H>            : "Ú"  U00DA  # U with acute
<dead_grave> <j>            : "ù"  U00F9  # u with grave
<dead_grave> <J>            : "Ù"  U00D9  # U with grave
<dead_grave> <k>            : "œ"  U0153  # ligature oe
<dead_grave> <K>            : "Œ"  U0152  # ligature OE
<dead_grave> <l>            : "ø"  U00F8  # o with stroke
<dead_grave> <L>            : "Ø"  U00D8  # O with stroke
<dead_grave> <semicolon>    : "ó"  U00F3  # o with acute
<dead_grave> <colon>        : "Ó"  U00D3  # O with acute
<dead_grave> <apostrophe>   : "ò"  U00F2  # o with grave
<dead_grave> <quotedbl>     : "Ò"  U00D2  # O with grave
<dead_grave> <z>            : "á"  U00E1  # a with acute
<dead_grave> <Z>            : "Á"  U00C1  # A with acute
<dead_grave> <x>            : "à"  U00E0  # a with grave
<dead_grave> <X>            : "À"  U00C0  # A with grave
<dead_grave> <c>            : "ç"  U00E7  # c with cedilla
<dead_grave> <C>            : "Ç"  U00C7  # C with cedilla
<dead_grave> <v>            : "ã"  U00E3  # a with tilde
<dead_grave> <V>            : "Ã"  U00C3  # A with tilde
<dead_grave> <b>            : "õ"  U00F5  # o with tilde
<dead_grave> <B>            : "Õ"  U00D5  # O with tilde
<dead_grave> <n>            : "ñ"  U00F1  # n with tilde
<dead_grave> <N>            : "Ñ"  U00D1  # N with tilde
<dead_grave> <m>            : "µ"  U00B5  # micro sign
<dead_grave> <M>            : "±"  U00B1  # plus-minus sign
<dead_grave> <comma>        : "°"  U00B0  # degree sign
<dead_grave> <less>         : "≤"  U2264  # less-than or equal to
<dead_grave> <period>       : "·"  U00B7  # middle dot
<dead_grave> <greater>      : "≥"  U2265  # greater-than or equal to
<dead_grave> <slash>        : "¿"  U00BF  # inverted question mark
<dead_grave> <question>     : "•"  U2022  # bullet
<dead_grave> <backslash>    : " "  U2002  # en space
<dead_grave> <bar>          : " "  U2003  # em space
<dead_grave> <space>        : "`"  U0060  # grave accent
<dead_grave> <dead_grave>   : "`"  U0060  # grave accent
<dead_grave> <dead_tilde>   : "\\" U005C  # reverse solidus (backslash)


# Dead Key :  ISO Key (defined as <dead_tilde>)

<dead_tilde> <asciitilde>   : " "  U00A0  # non-breaking space
<dead_tilde> <1>            : "¡"  U00A1  # inverted exclamation mark
<dead_tilde> <exclam>       : "¹"  U00B9  # superscript 1
<dead_tilde> <2>            : "²"  U00B2  # superscript 2
<dead_tilde> <at>           : "♫"  U266B  # beamed eighth notes
<dead_tilde> <3>            : "³"  U00B3  # superscript 3
<dead_tilde> <numbersign>   : "§"  U00A7  # section sign
<dead_tilde> <4>            : "£"  U00A3  # pound sign
<dead_tilde> <dollar>       : "¥"  U00A5  # yen sign
<dead_tilde> <5>            : "€"  U20AC  # euro sign
<dead_tilde> <percent>      : "¢"  U00A2  # cent sign (dollar)
<dead_tilde> <6>            : "í"  U00ED  # i with acute
<dead_tilde> <asciicircum>  : "Í"  U00CD  # I with acute
<dead_tilde> <7>            : "ì"  U00EC  # i with grave
<dead_tilde> <ampersand>    : "Ì"  U00CC  # I with grave
<dead_tilde> <8>            : "„"  U201E  # double low-9 quotation mark
<dead_tilde> <asterisk>     : "♪"  U266A  # eighth note
<dead_tilde> <9>            : "“"  U201C  # left double quotation mark
<dead_tilde> <parenleft>    : "‘"  U2018  # left single quotation mark
<dead_tilde> <0>            : "”"  U201D  # right double quotation mark
<dead_tilde> <parenright>   : "’"  U2019  # right single quotation mark
<dead_tilde> <minus>        : "–"  U2013  # en dash
<dead_tilde> <underscore>   : "—"  U2014  # em dash
<dead_tilde> <equal>        : "×"  U00D7  # multiplication sign
<dead_tilde> <plus>         : "÷"  U00F7  # division sign
<dead_tilde> <q>            : "æ"  U00E6  # letter ae
<dead_tilde> <Q>            : "Æ"  U00C6  # letter AE
<dead_tilde> <w>            : "å"  U00E5  # a with ring above
<dead_tilde> <W>            : "Å"  U00C5  # A with ring above
<dead_tilde> <e>            : "ë"  U00EB  # e with diaeresis
<dead_tilde> <E>            : "Ë"  U00CB  # E with diaeresis
<dead_tilde> <r>            : "ê"  U00EA  # e with circumflex
<dead_tilde> <R>            : "Ê"  U00CA  # E with circumflex
<dead_tilde> <t>            : "î"  U00EE  # i with circumflex
<dead_tilde> <T>            : "Î"  U00CE  # I with circumflex
<dead_tilde> <y>            : "û"  U00FB  # u with circumflex
<dead_tilde> <Y>            : "Û"  U00DB  # U with circumflex
<dead_tilde> <u>            : "ü"  U00FC  # u with diaeresis
<dead_tilde> <U>            : "Ü"  U00DC  # U with diaeresis
<dead_tilde> <i>            : "ï"  U00EF  # i with diaeresis
<dead_tilde> <I>            : "Ï"  U00CF  # I with diaeresis
<dead_tilde> <o>            : "ö"  U00F6  # o with diaeresis
<dead_tilde> <O>            : "Ö"  U00D6  # O with diaeresis
<dead_tilde> <p>            : "ô"  U00F4  # o with circumflex
<dead_tilde> <P>            : "Ô"  U00D4  # O with circumflex
<dead_tilde> <bracketleft>  : "«"  U00AB  # left-pointing double angle quotation mark
<dead_tilde> <braceleft>    : "‹"  U2039  # left-pointing single angle quotation mark
<dead_tilde> <bracketright> : "»"  U00BB  # right-pointing double angle quotation mark
<dead_tilde> <braceright>   : "›"  U203A  # right-pointing single angle quotation mark
<dead_tilde> <a>            : "ä"  U00E4  # a with diaeresis
<dead_tilde> <A>            : "Ä"  U00C4  # A with diaeresis
<dead_tilde> <s>            : "ß"  U00DF  # small sharp s (Eszett)
<dead_tilde> <S>            : "ẞ"  U1E9E  # capital sharp S (capital Eszett)
<dead_tilde> <d>            : "â"  U00E2  # a with circumflex
<dead_tilde> <D>            : "Â"  U00C2  # A with circumflex
<dead_tilde> <f>            : "é"  U00E9  # e with acute
<dead_tilde> <F>            : "É"  U00C9  # E with acute
<dead_tilde> <g>            : "è"  U00E8  # e with grave
<dead_tilde> <G>            : "È"  U00C8  # E with grave
<dead_tilde> <h>            : "ú"  U00FA  # u with acute
<dead_tilde> <H>            : "Ú"  U00DA  # U with acute
<dead_tilde> <j>            : "ù"  U00F9  # u with grave
<dead_tilde> <J>            : "Ù"  U00D9  # U with grave
<dead_tilde> <k>            : "œ"  U0153  # ligature oe
<dead_tilde> <K>            : "Œ"  U0152  # ligature OE
<dead_tilde> <l>            : "ø"  U00F8  # o with stroke
<dead_tilde> <L>            : "Ø"  U00D8  # O with stroke
<dead_tilde> <semicolon>    : "ó"  U00F3  # o with acute
<dead_tilde> <colon>        : "Ó"  U00D3  # O with acute
<dead_tilde> <apostrophe>   : "ò"  U00F2  # o with grave
<dead_tilde> <quotedbl>     : "Ò"  U00D2  # O with grave
<dead_tilde> <z>            : "á"  U00E1  # a with acute
<dead_tilde> <Z>            : "Á"  U00C1  # A with acute
<dead_tilde> <x>            : "à"  U00E0  # a with grave
<dead_tilde> <X>            : "À"  U00C0  # A with grave
<dead_tilde> <c>            : "ç"  U00E7  # c with cedilla
<dead_tilde> <C>            : "Ç"  U00C7  # C with cedilla
<dead_tilde> <v>            : "ã"  U00E3  # a with tilde
<dead_tilde> <V>            : "Ã"  U00C3  # A with tilde
<dead_tilde> <b>            : "õ"  U00F5  # o with tilde
<dead_tilde> <B>            : "Õ"  U00D5  # O with tilde
<dead_tilde> <n>            : "ñ"  U00F1  # n with tilde
<dead_tilde> <N>            : "Ñ"  U00D1  # N with tilde
<dead_tilde> <m>            : "µ"  U00B5  # micro sign
<dead_tilde> <M>            : "±"  U00B1  # plus-minus sign
<dead_tilde> <comma>        : "°"  U00B0  # degree sign
<dead_tilde> <less>         : "≤"  U2264  # less-than or equal to
<dead_tilde> <period>       : "·"  U00B7  # middle dot
<dead_tilde> <greater>      : "≥"  U2265  # greater-than or equal to
<dead_tilde> <slash>        : "¿"  U00BF  # inverted question mark
<dead_tilde> <question>     : "•"  U2022  # bullet
<dead_tilde> <backslash>    : " "  U2002  # en space
<dead_tilde> <bar>          : " "  U2003  # em space
<dead_tilde> <space>        : "\\" U005C  # reverse solidus (backslash)
<dead_tilde> <dead_grave>   : "`"  U0060  # grave accent
<dead_tilde> <dead_tilde>   : "\\" U005C  # reverse solidus (backslash)
```

## 2. Implement the layout

Either copy the file "custom" into "/usr/share/X11/xkb/symbols/" (root required),  
or put the file ".Xmodmap" into the user's home directory (~) to use the layout.

When using the file "custom", activate the layout on your desktop via the keyboard settings by selecting "A user-defined custom Layout".

Note that Xmodmap is deprecated, and is no longer supported on GNOME.
