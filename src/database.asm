; database.asm

WTile proc
::WIDE_IMAGES:
;                                                           BTile         Best
;          FileName                                       Indices    Viewed As     Notes
Roger equ ($-WTile)/Sprites.WTileLen
import_bin "..\tiles\blagger.wtile"                     ; 000-007        4 x 2     Preshifted player

Blank equ ($-WTile)/Sprites.WTileLen
import_bin "..\tiles\blank.wtile"                       ; 008-008        1 x 1     Blank

pend

Font                    proc
  Snatcher:             import_bin "../fonts/snatcher.fzx"
pend

MenuText                proc                            ; Named procedure to keep our print data tidy
                        db At, 1, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Green, " "                ; Set the attributes here, with spaces,
                        db Ink, Cyan, " "             ;   because FZX only prints pixels
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db At, 2, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Green, " "                ; Set the attributes here, with spaces,
                        db Ink, Cyan, " "             ;   because FZX only prints pixels
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db At, 3, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Green, " "                ; Set the attributes here, with spaces,
                        db Ink, Cyan, " "             ;   because FZX only prints pixels
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db Ink, Cyan, " "
                        db Ink, Green, " "
                        db At, 4, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces
                        db At, 5, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces
                        db At, 6, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 7, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 8, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 9, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 10, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 11, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 12, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 13, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 14, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 15, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 16, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 17, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                               "                ; Set the attributes here, with spaces,
                        db At, 18, 1                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "                    "                ; Set the attributes here, with spaces,
                        db At, 19, 7                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "     "                ; Set the attributes here, with spaces,
                        db At, 20, 7                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow,"     "                ; Set the attributes here, with spaces,
                        db At, 21, 7                    ; These codes are the same as you would
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "     "                ; Set the attributes here, with spaces,
                        db At, 19, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, White, "     "                ; Set the attributes here, with spaces,
                        db At, 20, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, White,"     "                ; Set the attributes here, with spaces,
                        db At, 21, 12                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, White, "        "                ; Set the attributes here, with spaces,
                        db At, 19, 17                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "        "                ; Set the attributes here, with spaces,
                        db At, 20, 17                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow,"        "                ; Set the attributes here, with spaces,
                        db At, 21, 17                    ; These codes are the same as you would use
                        db Paper, Black, PrBright, 1    ;   with Sinclair BASIC's PRINT command
                        db Ink, Yellow, "        "                ; Set the attributes here, with spaces,



Length                  equ $-MenuText                  ; Let Zeus do the work of calculating the length
                                                        ; ($ means the current address Zeus is assembling to)
FZX:                    db At, 6, 108                  ; FXX coordinates are (Y, X) in pixels
                        db "Blagger"
                        db At, 30, 10
                        db "Roger the Dodger is back! Our master"
                        db At, 54, 10
                        db "burglar has been released from jail."
                        db At, 78, 10
                        db "Down on his luck he can't resist in"
                        db At, 102, 10
                        db "one last job! Crack every safe and"
                        db At, 126, 10
                        db "bring home the bacon!"
                        db At, 154, 60
                        db "Press SPACE to play"
                        db 255                          ; Terminator byte
pend

GameText                proc                            ; FXX coordinates are (Y, X) in pixels
                        db At, 0, 0, "1UP"
                        db At, 0, 94, "HIGH SCORE"
                        db At, 9, 0, "0"
                        db At, 9, 112, "20000"
                        db 255                          ; Terminator byte
pend


ClsNirvanaGame          proc
                        db 128, BrightWhiteBlackP
                        loop 11
                          db 255, BrightYellowBlackP
                        lend
                        db 11, BrightYellowBlackP
                        db 0
pend
