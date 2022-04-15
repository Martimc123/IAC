pos_ini         word    11b
velo_ini        word    6d
tempo           word    10b

                mvi     r1, velo_ini
                mvi     r4, pos_ini
                mvi     r2, tempo
                Load    r4, M[r4]
                Load    r1, M[r1]
                load    r2, M[r2]
                add     r5, r4, r1
END:            BR        END
                
Produto:        MVI     R3, 0
                CMP     R2, R0
                BR.Z    .Fim
                
                
.Loop:          ADD     R3, R3, R1
                DEC     R2
                BR.NZ   .Loop
                
.Fim:           JMP     R7










