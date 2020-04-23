; database.asm



BTile proc
::TILE_IMAGES:
::TileImages:
;                                                           BTile         Best
;          FileName                                       Indices    Viewed As     Notes
NirvanaDemo equ ($-TileImages)/Sprites.BTileLen
import_bin "..\tiles\blagger.btile"                    ; 000-005        1 x 6     Menu Play

pend

WTile proc
::WIDE_IMAGES:
;                                                           BTile         Best
;          FileName                                       Indices    Viewed As     Notes
Monster equ ($-WTile)/Sprites.BTileLen
import_bin "..\tiles\blagger.wtile"                     ; 000-007        4 x 2     Preshifted player

pend

Blank equ ($-WTile)/Sprites.BTileLen
import_bin "..\tiles\blank.wtile"                       ; 008-008        1 x 1     Blank


MenuText                proc                            ; Named procedure to keep our print data tidy
                        db At, 7, 13                    ; These codes are the same as you would use
                        db Paper, Black, Bright, 1      ;   with Sinclair BASIC's PRINT command
                        db Ink, Red, "B"
                        db Ink, Yellow, "L"
                        db Ink, Cyan, "A"
                        db Ink, Magenta, "G"
                        db Ink, White, "G"
                        db Ink, Green, "E"
                        db Ink, Red, "R"
                        db At, 21, 6
                        db Ink, Yellow, "PRESS "
                        db Ink, White, "SPACE"
                        db Ink, Yellow, " TO START"
Length                  equ $-MenuText                  ; Let Zeus do the work of calculating the length
pend                                                    ; ($ means the current address Zeus is assembling to)

