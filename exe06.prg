clear

nNumero1 := 0
nNumero2 := 0
nNumero3 := 0


// blocos say
@ 00,00 say "Digite o numero 1"
@ 01,00 say "Digite o numero 2"
@ 02,00 say "Digite o numero 3"
//blocos get
@ 00,18 get nNumero1 Picture "999"
@ 01,18 get nNumero2 Picture "999"
@ 02,18 get nNumero3 Picture "999"
read

nSoma := nNumero1+nNumero2+nNumero3
nMedia:= nSoma/3

@ 04,00 say "A media entre "+AllTrim(Str(nNumero1))+", "+AllTrim(Str(nNumero2))+" e "+AllTrim(Str(nNumero3))+" = "+AllTrim(Str(nMedia))

