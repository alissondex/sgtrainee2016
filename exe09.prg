clear
cLetra := Space(1)
nInteiro := 0
nDecimal := 0.0
cString := Space(50)

@ 00,00 to 05,61 Double

//blocos say
@ 01,01 say "  Letra:"
@ 02,01 say "Inteiro:"
@ 03,01 say "Decimal:"
@ 04,01 say " String:"


//blocos get
@ 01,10 get cLetra Picture "@!" Valid !Empty(cLetra)
@ 02,10 get nInteiro Picture "999"
@ 03,10 get nDecimal Picture "99.99"
@ 04,10 get cString Picture "@!" Valid !Empty(cString)
read

@ 01,01 clear to 04,60

//blocos say
@ 01,01 say "  Letra: "+cLetra
@ 02,01 say "Inteiro: "+AllTrim(Transform(nInteiro, "999"))
@ 03,01 say "Decimal: "+AllTrim(Transform(nDecimal, "99.99"))
@ 04,01 say " String: "+cString

@ 06,00 say " " // para linha de comando nao sobrepor a borda


