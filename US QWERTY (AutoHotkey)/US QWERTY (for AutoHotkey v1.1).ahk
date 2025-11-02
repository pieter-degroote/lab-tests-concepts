#requires AutoHotkey v1.1

; US QWERTY (for AutoHotkey v1.1).ahk

; GitHub :   https://github.com/pieter-degroote/lab-tests-concepts

; License :  GNU General Public License Version 3



#NoEnv          ; avoids checking empty variables to see if they are environment variables
#KeyHistory 0   ; disables the key history (for privacy and security)
ListLines Off   ; omits recently executed lines from history (for privacy and security)

SendMode Input  ; optimizes for faster and more reliable input


; Configuration :  US QWERTY (base layout)

; Key :  1
sc002::Send {u+0031}   ; (1) digit 1
+sc002::Send {u+0021}  ; (!) exclamation mark

; Key :  2
sc003::Send {u+0032}   ; (2) digit 2
+sc003::Send {u+0040}  ; (@) commercial at (at sign)

; Key :  3
sc004::Send {u+0033}   ; (3) digit 3
+sc004::Send {u+0023}  ; (#) number sign

; Key :  4
sc005::Send {u+0034}   ; (4) digit 4
+sc005::Send {u+0024}  ; ($) dollar sign

; Key :  5
sc006::Send {u+0035}   ; (5) digit 5
+sc006::Send {u+0025}  ; (%) percent sign

; Key :  6
sc007::Send {u+0036}   ; (6) digit 6
+sc007::Send {u+005e}  ; (^) circumflex accent

; Key :  7
sc008::Send {u+0037}   ; (7) digit 7
+sc008::Send {u+0026}  ; (&) ampersand

; Key :  8
sc009::Send {u+0038}   ; (8) digit 8
+sc009::Send {u+002a}  ; (*) asterisk

; Key :  9
sc00A::Send {u+0039}   ; (9) digit 9
+sc00A::Send {u+0028}  ; (() left parenthesis

; Key :  0
sc00B::Send {u+0030}   ; (0) digit 0
+sc00B::Send {u+0029}  ; ()) right parenthesis

; Key :  - / _ (hyphen-minus / underscore)
sc00C::Send {u+002d}   ; (-) hyphen-minus
+sc00C::Send {u+005f}  ; (_) low line (underscore)

; Key :  = / + (equals sign / plus sign)
sc00D::Send {u+003d}   ; (=) equals sign
+sc00D::Send {u+002b}  ; (+) plus sign

; Key :  Q
sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+0051}  ; (Q) letter Q
  else
    Send {u+0071}  ; (q) letter q
  return
+sc010::
  if GetKeyState("CapsLock", "T")
    Send {u+0071}  ; (q) letter q
  else
    Send {u+0051}  ; (Q) letter Q
  return

; Key :  W
sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+0057}  ; (W) letter W
  else
    Send {u+0077}  ; (w) letter w
  return
+sc011::
  if GetKeyState("CapsLock", "T")
    Send {u+0077}  ; (w) letter w
  else
    Send {u+0057}  ; (W) letter W
  return

; Key :  E
sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+0045}  ; (E) letter E
  else
    Send {u+0065}  ; (e) letter e
  return
+sc012::
  if GetKeyState("CapsLock", "T")
    Send {u+0065}  ; (e) letter e
  else
    Send {u+0045}  ; (E) letter E
  return

; Key :  R
sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+0052}  ; (R) letter R
  else
    Send {u+0072}  ; (r) letter r
  return
+sc013::
  if GetKeyState("CapsLock", "T")
    Send {u+0072}  ; (r) letter r
  else
    Send {u+0052}  ; (R) letter R
  return

; Key :  T
sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+0054}  ; (T) letter T
  else
    Send {u+0074}  ; (t) letter t
  return
+sc014::
  if GetKeyState("CapsLock", "T")
    Send {u+0074}  ; (t) letter t
  else
    Send {u+0054}  ; (T) letter T
  return

; Key :  Y
sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+0059}  ; (Y) letter Y
  else
    Send {u+0079}  ; (y) letter y
  return
+sc015::
  if GetKeyState("CapsLock", "T")
    Send {u+0079}  ; (y) letter y
  else
    Send {u+0059}  ; (Y) letter Y
  return

; Key :  U
sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+0055}  ; (U) letter U
  else
    Send {u+0075}  ; (u) letter u
  return
+sc016::
  if GetKeyState("CapsLock", "T")
    Send {u+0075}  ; (u) letter u
  else
    Send {u+0055}  ; (U) letter U
  return

; Key :  I
sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+0049}  ; (I) letter I
  else
    Send {u+0069}  ; (i) letter i
  return
+sc017::
  if GetKeyState("CapsLock", "T")
    Send {u+0069}  ; (i) letter i
  else
    Send {u+0049}  ; (I) letter I
  return

; Key :  O
sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+004f}  ; (O) letter O
  else
    Send {u+006f}  ; (o) letter o
  return
+sc018::
  if GetKeyState("CapsLock", "T")
    Send {u+006f}  ; (o) letter o
  else
    Send {u+004f}  ; (O) letter O
  return

; Key :  P
sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+0050}  ; (P) letter P
  else
    Send {u+0070}  ; (p) letter p
  return
+sc019::
  if GetKeyState("CapsLock", "T")
    Send {u+0070}  ; (p) letter p
  else
    Send {u+0050}  ; (P) letter P
  return

; Key :  [ / { (left square bracket / left curly bracket)
sc01A::Send {u+005b}   ; ([) left square bracket
+sc01A::Send {u+007b}  ; ({) left curly bracket

; Key :  ] / } (right square bracket / right curly bracket)
sc01B::Send {u+005d}   ; (]) right square bracket
+sc01B::Send {u+007d}  ; (}) right curly bracket

; Key :  A
sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+0041}  ; (A) letter A
  else
    Send {u+0061}  ; (a) letter a
  return
+sc01E::
  if GetKeyState("CapsLock", "T")
    Send {u+0061}  ; (a) letter a
  else
    Send {u+0041}  ; (A) letter A
  return

; Key :  S
sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+0053}  ; (S) letter S
  else
    Send {u+0073}  ; (s) letter s
  return
+sc01F::
  if GetKeyState("CapsLock", "T")
    Send {u+0073}  ; (s) letter s
  else
    Send {u+0053}  ; (S) letter S
  return

; Key :  D
sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+0044}  ; (D) letter D
  else
    Send {u+0064}  ; (d) letter d
  return
+sc020::
  if GetKeyState("CapsLock", "T")
    Send {u+0064}  ; (d) letter d
  else
    Send {u+0044}  ; (D) letter D
  return

; Key :  F
sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+0046}  ; (F) letter F
  else
    Send {u+0066}  ; (f) letter f
  return
+sc021::
  if GetKeyState("CapsLock", "T")
    Send {u+0066}  ; (f) letter f
  else
    Send {u+0046}  ; (F) letter F
  return

; Key :  G
sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+0047}  ; (G) letter G
  else
    Send {u+0067}  ; (g) letter g
  return
+sc022::
  if GetKeyState("CapsLock", "T")
    Send {u+0067}  ; (g) letter g
  else
    Send {u+0047}  ; (G) letter G
  return

; Key :  H
sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+0048}  ; (H) letter H
  else
    Send {u+0068}  ; (h) letter h
  return
+sc023::
  if GetKeyState("CapsLock", "T")
    Send {u+0068}  ; (h) letter h
  else
    Send {u+0048}  ; (H) letter H
  return

; Key :  J
sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+004a}  ; (J) letter J
  else
    Send {u+006a}  ; (j) letter j
  return
+sc024::
  if GetKeyState("CapsLock", "T")
    Send {u+006a}  ; (j) letter j
  else
    Send {u+004a}  ; (J) letter J
  return

; Key :  K
sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+004b}  ; (K) letter K
  else
    Send {u+006b}  ; (k) letter k
  return
+sc025::
  if GetKeyState("CapsLock", "T")
    Send {u+006b}  ; (k) letter k
  else
    Send {u+004b}  ; (K) letter K
  return

; Key :  L
sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+004c}  ; (L) letter L
  else
    Send {u+006c}  ; (l) letter l
  return
+sc026::
  if GetKeyState("CapsLock", "T")
    Send {u+006c}  ; (l) letter l
  else
    Send {u+004c}  ; (L) letter L
  return

; Key :  ; / : (semicolon / colon)
sc027::Send {u+003b}   ; (;) semicolon
+sc027::Send {u+003a}  ; (:) colon

; Key :  ' / " (apostrophe / quotation mark)
sc028::Send {u+0027}   ; (') apostrophe
+sc028::Send {u+0022}  ; (") quotation mark

; Key :  ` / ~ (grave accent / tilde)
sc029::Send {u+0060}   ; (`) grave accent
+sc029::Send {u+007e}  ; (~) tilde

; Key :  \ / | (backslash / vertical line)
sc02B::Send {u+005c}   ; (\) reverse solidus (backslash)
+sc02B::Send {u+007c}  ; (|) vertical line (bar)

; Key :  Z
sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+005a}  ; (Z) letter Z
  else
    Send {u+007a}  ; (z) letter z
  return
+sc02C::
  if GetKeyState("CapsLock", "T")
    Send {u+007a}  ; (z) letter z
  else
    Send {u+005a}  ; (Z) letter Z
  return

; Key :  X
sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+0058}  ; (X) letter X
  else
    Send {u+0078}  ; (x) letter x
  return
+sc02D::
  if GetKeyState("CapsLock", "T")
    Send {u+0078}  ; (x) letter x
  else
    Send {u+0058}  ; (X) letter X
  return

; Key :  C
sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+0043}  ; (C) letter C
  else
    Send {u+0063}  ; (c) letter c
  return
+sc02E::
  if GetKeyState("CapsLock", "T")
    Send {u+0063}  ; (c) letter c
  else
    Send {u+0043}  ; (C) letter C
  return

; Key :  V
sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+0056}  ; (V) letter V
  else
    Send {u+0076}  ; (v) letter v
  return
+sc02F::
  if GetKeyState("CapsLock", "T")
    Send {u+0076}  ; (v) letter v
  else
    Send {u+0056}  ; (V) letter V
  return

; Key :  B
sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+0042}  ; (B) letter B
  else
    Send {u+0062}  ; (b) letter b
  return
+sc030::
  if GetKeyState("CapsLock", "T")
    Send {u+0062}  ; (b) letter b
  else
    Send {u+0042}  ; (B) letter B
  return

; Key :  N
sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+004e}  ; (N) letter N
  else
    Send {u+006e}  ; (n) letter n
  return
+sc031::
  if GetKeyState("CapsLock", "T")
    Send {u+006e}  ; (n) letter n
  else
    Send {u+004e}  ; (N) letter N
  return

; Key :  M
sc032::
  if GetKeyState("CapsLock", "T")
    Send {u+004d}  ; (M) letter M
  else
    Send {u+006d}  ; (m) letter m
  return
+sc032::
  if GetKeyState("CapsLock", "T")
    Send {u+006d}  ; (m) letter m
  else
    Send {u+004d}  ; (M) letter M
  return

; Key :  , / < (comma / less-than sign)
sc033::Send {u+002c}   ; (,) comma
+sc033::Send {u+003c}  ; (<) less-than sign

; Key :  . / > (period / greater-than sign)
sc034::Send {u+002e}   ; (.) full stop (period)
+sc034::Send {u+003e}  ; (>) greater-than sign

; Key :  / / ? (slash / question mark)
sc035::Send {u+002f}   ; (/) solidus (slash)
+sc035::Send {u+003f}  ; (?) question mark

; Key :  space
sc039::Send {u+0020}   ; ( ) space
+sc039::Send {u+0020}  ; ( ) space

; Key :  ISO key
sc056::Send {u+005c}   ; (\) reverse solidus (backslash)
+sc056::Send {u+007c}  ; (|) vertical line (bar)

NumpadDot::Send {u+002e}  ; (.) period
