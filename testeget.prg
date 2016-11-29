clear

nNumero := 0

//bloco say
@ 01,01 say "Insira um numero:"

//bloco get
@ 01,18 get nNumero Picture "99999999999999999999"
read

@ 01,01 clear to 01,30
@ 01,01 say "O numero digitado e' "+AllTrim(Str(nNumero))


