Function Main()
   clear
   nNumero1 := 0
   nNumero2 := 0
   //bloco say
   @ 00,00 say "Digite o numero 1"
   @ 01,00 say "Digite o numero 2"
   //bloco get
   @ 00,20 get nNumero1 Picture "999"
   @ 01,20 get nNumero2 Picture "999"
   read

   Operacoes(3, nNumero1, nNumero2)
   @ 08,00 say "Operacoes com numeros invertidos (Subtracao e divisao com probabilidade de diferenca)"
   Operacoes(9, nNumero2, nNumero1)


Function Operacoes(nLinha, nNumero1, nNumero2)
   nSoma := nNumero1 + nNumero2
   nSubtracao := nNumero1 - nNumero2
   nProduto := nNumero1 * nNumero2
   nDivisao := nNumero1 / nNumero2
   @ nLinha+0,00 say "Soma      = "+AllTrim(Str(nSoma))
   @ nLinha+1,00 say "Subtracao = "+AllTrim(Str(nSubtracao))
   @ nLinha+2,00 say "Produto   = "+AllTrim(Str(nProduto))
   @ nLinha+3,00 say "Divisao   = "+AllTrim(Str(nDivisao))

