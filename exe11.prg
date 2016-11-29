Function Main()
   clear
   cNome := Space(40)
   nIdade := 0

   @ 01,05 to 05,56 Double
   //say
   @ 02,07 say " Nome:"
   @ 03,07 say "Idade:"

   //get
   @ 02,15 get cNome Picture "@!" Valid !Empty(cNome)
   @ 03,15 get nIdade Picture "999"
   read

   @ 04,07 say "Modalidade: "+getModalidade(nIdade)
   @ 05,00 say ""


Function getModalidade(nIdade)
   cCategoria := Space(15)

   If(nIdade <= 10 .and. nIdade >= 5)
      cCategoria := "infantil"
      If(nIdade <= 7)
         Return cCategoria+" A"
      Else
         Return cCategoria+" B"
      Endif

   Elseif(nIdade <= 17 .and. nIdade >= 11)
      cCategoria := "juvenil"
      If(nIdade <= 13)
         Return cCategoria+" A"
      Else
         Return cCategoria+" B"
      Endif

   Elseif(nIdade>=18)
      Return "senior"

   Endif

   Return "Nao identificada"


