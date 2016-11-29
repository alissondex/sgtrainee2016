clear
nA := 0
nB := 0

//bloco say
@ 00,00 say "Digite o numero A"
@ 01,00 say "Digite o numero B"

//bloco get
@ 00,18 get nA Picture "999"
@ 01,18 get nB Picture "999"
read

@ 00,00 clear to 01,30

@ 00,00 say "A="+AllTrim(Str(nA))+"  B="+AllTrim(Str(nB))
@ 01,00 say "Precione qualquer tecla para efetuar a troca"
InKey(0)
nTemp = nA
nA = nB
nB = nTemp
@ 02,00 say "A="+AllTrim(Str(nA))+"  B="+AllTrim(Str(nB))


