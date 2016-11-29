clear

nTotalNaoPerecivel := 0
nTotalPerecivel := 0
nTotalVestuario := 0
nTotalHigiene := 0
nTotalLimpeza := 0

@ 00,00 to 08,30 Double
nCodigo := 0
While .t.
   //blocos say
   @ 01,01 say "Nao Perecivel:"+AllTrim(Str(nTotalNaoPerecivel))
   @ 02,01 say "    Perecivel:"+AllTrim(Str(nTotalPerecivel))
   @ 03,01 say "    Vestuario:"+AllTrim(Str(nTotalVestuario))
   @ 04,01 say "      Higiene:"+AllTrim(Str(nTotalHigiene))
   @ 05,01 say "      Limpeza:"+AllTrim(Str(nTotalLimpeza))
   @ 07,01 say "Insira o codigo:"

   //bloco get
   @ 07,20 get nCodigo Picture "99" Valid nCodigo < 16
   read

   If nCodigo == 0
      @ 09,00 say ""
      Exit
   Elseif nCodigo == 1
      nTotalNaoPerecivel++
   Elseif nCodigo >= 2 .and. nCodigo <= 4
      nTotalPerecivel++
   Elseif nCodigo == 5 .or. nCodigo == 7
      nTotalVestuario++
   Elseif nCodigo == 7
      nTotalHigiene++
   Elseif nCodigo >= 8 .and. nCodigo <= 15
      nTotalLimpeza++
   End if

End While
