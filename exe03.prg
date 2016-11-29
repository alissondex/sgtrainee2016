clear

nNumero1 := 0
nNumero2 := 0

//bloco say
@ 00,00 say "Numero 1"
@ 01,00 say "Numero 2"

//bloco get
@ 00,09 get nNumero1 Picture "99999.99"
@ 01,09 get nNumero2 Picture "99999.99"
read

nProduto := nNumero1 * nNumero2


@ 02,00 say "O produto entre "+AllTrim(Str(nNumero1))+" e "+AllTrim(Str(nNumero2))+" = "+AllTrim(Str(nProduto))



