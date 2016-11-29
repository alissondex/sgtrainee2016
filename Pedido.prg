Function Main()
   clear
   set scoreboard off
   cNomeCliente := space(50)

   @ 02,00 to 14,80 Double
   //desenha bordas horizontais
   @ 04,01 to 04,79
   @ 06,01 to 06,79
   @ 08,01 to 08,79
   @ 10,01 to 10,79
   @ 12,01 to 12,79
   //desenha bordas verticais
   @ 03,42 to 13,42
   @ 03,50 to 13,50
   @ 03,64 to 13,64


   //titulos
   @ 03,02 say "PEDIDO:"
   @ 03,43 say "QTDE:"
   @ 03,51 say "VALOR UNIT.:"
   @ 03,65 say "VALOR TOTAL:"

   Informar("Desenvolvido por BESG - (44) 9999-9999")


   @ 00,00 say "EMPRESA: SUPERMCERCADO BESG"
   @ 01,00 say "CLIENTE:"
   @ 01,09 get cNomeCliente Picture "@!" Valid !Empty(cNomeCliente)
   read

   cNomeProduto := Space(40)
   nQtdeProduto := 0
   nTotalProduto := 0
   nValorUnitProduto := 0

   nLinhaAtual := 5
   nProdutosGravados := 0
   nTotalCompra := 0

   while nProdutosGravados < 5
      //inicia valores
      cNomeProduto := Space(40)
      nQtdeProduto := 0
      nTotalProduto := 0
      nValorUnitProduto := 0

      @ nLinhaAtual,01 get cNomeProduto Picture "@!" Valid !Empty(cNomeProduto)
      @ nLinhaAtual,43 get nQtdeProduto Picture "999.99"
      @ nLinhaAtual,51 get nValorUnitProduto Picture "9,999.99"
      read

      while nQtdeProduto <= 0
         Informar("A Qunatidade informada para "+AllTrim(cNomeProduto)+" e' menor ou igual a zero")
         @ nLinhaAtual,43 get nQtdeProduto Picture "999.99"
         read
      end do

      while nValorUnitProduto <= 0
         Informar("O Valor informado para "+AllTrim(cNomeProduto)+" e' menor ou igual a zero")
         @ nLinhaAtual,51 get nValorUnitProduto Picture "9,999.99"
         read
      end do

      nTotalProduto := nQtdeProduto*nValorUnitProduto
      nTotalCompra += nTotalProduto
      @ nLinhaAtual,65 say nTotalProduto Picture "@E 99,999.99"

      nProdutosGravados++
      nLinhaAtual += 2
      Informar("O produto "+AllTrim(cNomeProduto)+" foi adicionado ao carrinho")
   end do


   @ 15,00 to 17,80 Double
   Informar("Total da compra: R$ "+Transform(nTotalCompra, "99,999.99"))


Function Informar(cMenssagem)
   @ 15,00 clear to 17,80
   @ 15,00 to 17,80 Double
   @ 16,01 say cMenssagem
   @ 18,00 say " " //menssagem ao final da linha de comandos para o cursor nao sobrepor

