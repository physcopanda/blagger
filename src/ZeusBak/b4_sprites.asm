; sprites.asm



AnimateDemo             proc

                        ld a, (FRAMES)                  ; Read the LSB of the ROM frame counter (0.255)
                        and %00000111                   ; Take the lowest 3 bits (effectively FRAMES modulus 8),
                        ret nz                          ;   and return 7 out of every 8 frames.

                        ld a, (Sprites.AIndex)          ; For every 8th frame, read Sprite A's tile index,
                        inc a
                        cp 4
                        jr nz Loop
                        ld (Sprites.AIndex), 0
Loop
                        ret
pend

