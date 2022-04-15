acel_gravit     word    1001110011b
seno            str     0, 0004h, 0009h, 000Dh, 0012h, 0016h, 001Bh, 001Fh,0024h,0028h,002Ch,0031h,0035h,003Ah,003Eh,0042h,0047h,004Bh,004Fh,0053h,0058h,005Ch,0060h,0064h,0068h,006Ch,0070h,0074h,0078h,007Ch,0080h,0084h,0088h,008Bh,008Fh,0093h,0096h,009Ah,009Eh,00A1h,00A5h,00A8h,00ABh,00AFh,00B2h,00B5h,00B8h,00BBh,00BEh,00C1h,00C4h,00C7h,00CAh,00CCh,00CFh,00D2h,00D4h,00D7h,00D9h,00DBh,00DEh,00E0h,00E2h,00E4h,00E6h,00E8h,00EAh,00ECh,00EDh,00EFh,00F1h,00F2h,00F3h,00F5h,00F6h,00F7h,00F8h,00F9h,00FAh,00FBh,00FCh,00FDh,00FEh,00FEh,00FFh,00FFh,00FFh,0100h,0100h,0100h,0100h
                
                mvi     r2, acel_gravit
                mvi     r4, seno
                
                Load    r4, M[r4]
                load    r2, M[r2]
END:            BR        END
                
Produto:        MVI     R3, 0
                CMP     R2, R0
                BR.Z    .Fim
                
                
.Loop:          ADD     R3, R3, R1
                DEC     R2
                BR.NZ   .Loop
                
.Fim:           JMP     R7









