/*funcao main*/
Function Main()
   clear
   nQuantidadeA := 0
   nQuantidadeB := 0
   nQuantidadeC := 0

   //para nao haver inconsistencia nas opcoes
   nAlterarA := 1
   nAlterarB := 2
   nAlterarC := 3
   nOpcaoCalcular := 4
   nSelecionarOpcao := 0
   lComprar := .f.

   /*a nLinhaInformacao sera usada como linha principal
    *para entrada e apresentacao dos dados */
   nLinhaInformacao := 6

   @ 00,05 to 08,50 Double
   /*loop principal
    *informa as quantidades e solicita alteracoes
    *ou efetua o calculo e encerra*/
   While(!lComprar)
      @ 01,06 clear to 07,49
      //blocos say
      @ 02,07 say "("+Transform(nAlterarA, "9")+") Qtd A = "+AllTrim(Transform(nQuantidadeA, "9999999999.99"))
      @ 03,07 say "("+Transform(nAlterarB, "9")+") Qtd B = "+AllTrim(Transform(nQuantidadeB, "9999999999.99"))
      @ 04,07 say "("+Transform(nAlterarC, "9")+") Qtd C = "+AllTrim(Transform(nQuantidadeC, "9999999999.99"))
      @ 05,07 say "("+Transform(nOpcaoCalcular, "9")+") Calcular e sair"
      @ 06,07 say "Opcao: "
      nSelecionarOpcao := 0

      /*seleciona a opcao
       *e efetua procedimento
       *ou apresenta erro */
      @ 06,15 get nSelecionarOpcao Picture "9"
      read

      If nSelecionarOpcao == nAlterarA
         nQuantidadeA := quantidade("A", nLinhaInformacao)

      Elseif nSelecionarOpcao == nAlterarB
         nQuantidadeB := quantidade("B", nLinhaInformacao)

      Elseif nSelecionarOpcao == nAlterarC
         nQuantidadeC := quantidade("C", nLinhaInformacao)

      Elseif nSelecionarOpcao == nOpcaoCalcular
         nTotal = calcula(nQuantidadeA, nQuantidadeB, nQuantidadeC)
         @ 06,07 clear to 06,49
         @ 06,07 say "Total da compra = R$ "+AllTrim(Transform(nTotal, "@E 999,999,999,999.99"))
         lComprar := .t.

      Else
         @ 06,07 clear to 06,49
         @ 06,07 say "Opcao invalida"
         InKey(0)
      Endif
   End While


/*
*funcao Calcula
*Recebe:
*   nQtdeA: Quantidade de produtos A
*   nQtdeB: idem B
*   nQtdeC: idem C
*Retorna:
*   O valor da compra
*/
Function Calcula(nQtdeA, nQtdeB, nQtdeC)
   nPrecoA := 10
   nPrecoB := 5.25
   nPrecoC := 20
   Return (nPrecoA*nQtdeA)+(nPrecoB*nQtdeB)+(nPrecoC*nQtdeC)


/*
*funcao quantidade
*Recebe:
*   cProduto: Nome do produto para apresentacao
*   nLinha  : Linha em que deve ser feita a entrada/saida de dados
*Retorna:
*   O quantidade que o usuario inseriu, ou zero se o mesmo for menor que zero
*/
Function Quantidade(cProduto, nLinha)
   nQtde := 0
   @ nLinha,07 clear to 06,49
   @ nLinha,07 say cProduto+": "
   @ nLinha,15 get nQtde Picture "9999999999.99"
   read
   //a quantidade tem que ser maior do que zero
   if nQtde < 0
      nQtde := 0
   end if
   Return nQtde

