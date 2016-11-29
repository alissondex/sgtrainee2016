clear

//Titulos que indicam a apresentacao inicial da informacao
cLabelNome := " Nome: "
cLabelIdade:= "Idade: "
cLabelPeso := " Peso: "

cNome := Space(50)
nIdade := 0
nPeso := 0

@ 05,05 to 09,68 Double

//blocos say
@ 06,06 say cLabelNome
@ 07,06 say cLabelIdade
@ 08,06 say cLabelPeso

//blocos get
@ 06,14 get cNome Picture "@!"
@ 07,14 get nIdade Picture "999"
@ 08,14 get nPeso Picture "9999.99"
read

@ 06,06 clear to 08,67

@ 06,06 say cLabelNome+AllTrim(cNome)
@ 07,06 say cLabelIdade+AllTrim(Str(nIdade))
@ 08,06 say cLabelPeso+AllTrim(Transform(nPeso, "9999.99"))



