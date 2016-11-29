clear
cNome := Space(50)
nRepeticoes := 10

@ 01,01 to 04,65 Double

@ 02,02 say "      Nome:"
@ 03,03 say "Repeticoes:"

@ 02,15 get cNome Picture "@!" Valid !Empty(cNome)
@ 03,15 say AllTrim(Str(nRepeticoes))
read


@ 05,01 to 06+nRepeticoes,58 Double

nContador := 0
nLinha := 6
cNome := AllTrim(cNome) //economiza para a memoria
While nContador < nRepeticoes
   @ nLinha++,02 say cNome Picture "@!"
   nContador++
End While

@ nLinha+1,00 say " "
