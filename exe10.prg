clear
nIdade := 0
@ 00,00 to 04,60 Double

cNome := Space(50)
nIdade:= 0

//blocos say
@ 01,01 say " Nome:"
@ 02,01 say "Idade:"

//blocos get
@ 01,08 get cNome Picture "@!" Valid !Empty(cNome)
@ 02,08 get nIdade Picture "999" Valid (nIdade >= 0)
read

If nIdade >= 21
   @ 03,01 say "tem mais de 21 anos"
Else
   @ 03,01 say "tem menos de 21 anos"
Endif

@ 05,00 say ""
