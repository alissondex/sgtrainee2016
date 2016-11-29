Function Main()
   clear
   nQtdeNumero := 3
   nNumerosLidos := 0
   nNumero := 0
   nMaior := 0

   @ 00,00 to 04,25 Double

   @ 02,01 say "Numero 1:"
   @ 02,11 get nMaior Picture "99999"
   read
   nNumerosLidos++

   While nNumerosLidos < nQtdeNumero
      @ 02,01 clear to 02,16
      @ 02,01 say "Numero "+AllTrim(Transform(nNumerosLidos+1, "999"))+":"
      @ 02,11 get nNumero Picture "99999"
      read
      If nNumero > nMaior
         nMaior := nNumero
      Endif
      nNumero := 0
      nNumerosLidos++
   End while

   @ 02,01 clear to 02,16
   @ 02,01 say "O maior numero e' "+Alltrim(Str(nMaior))
   @ 05,00 say ""


