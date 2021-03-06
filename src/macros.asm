; macros.asm



Border                  macro(Colour)                   ; Macro (makes the code more readable) to set border
                        ld a, Colour                    ; Set a to the colour desired
                        out (ULAPort), a                ;   and output it to the ULA Port (defined in constants)
mend                                                    ; No RET is needed - this code is inserted inline



Print                   macro(TextAddress, TextLength)  ; Macro to print text on the screen using ROM routines
                        ld a, ChannelUpper              ; Channel 2 (defined in constants) is the upper screen
                        call CHAN_OPEN                  ; Open this channel (ROM routine)
PrintLoop:              ld de, TextAddress              ; Address of string to print
                        ld bc, TextLength               ; Length of string to print
                        call PR_STRING                  ; Print string (ROM routine)

mend

PrintTextHL             macro()
PrintMenu:              ld a, (hl)                      ; for each character of this string...
                        cp 255
                        jp z, Next                      ; check string terminator
                        push hl                         ; preserve HL
                        call FZX_START                  ; print character
                        pop hl                          ; recover HL
                        inc hl
                        jp PrintMenu
Next:                                                   ; This will be whatever code follows the macro
mend

ClsAttrLine             macro(Line, Colour)
                        if Colour = DimBlackBlackP
                         xor a
                        else
                          ld a, Colour
                        endif
                        ld hl, AttributeAddress+(Line*32)
                        ld (hl), a
                        ld de, AttributeAddress+(Line*32)+1
                        ld bc, 32
                        ldir
mend


