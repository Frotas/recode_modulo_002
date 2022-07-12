Algoritmo "agencia_de_viagem"
Tipo
   cad_pessoa = registro
      nome  : caractere
      senha : caractere
   fimregistro
   cad_localizacao = registro
      destino : caractere
      local   : caractere
   fimregistro
Var
   pessoa  : Vetor [1..2] de cad_pessoa
   destino : Vetor [1..2] de cad_localizacao
   index, quantCadastrada, cadastroClientes: inteiro
Inicio
   cadastroClientes <- 2 // Maior que 2 da erro;
   EscrevaL("----------------------------------------")
   EscrevaL(" Favor responder as seguintes perguntas:")
   EscrevaL("----------------------------------------")
   EscrevaL(" * Entre um nome vazio para terminar ou pressione ESC para sair * ")
   EscrevaL("----------------------------------------")

   // De 1 a numeroMaximo de pessoas
   Para index de 1 ate cadastroClientes faca
      quantCadastrada <- quantCadastrada + 1

      // Nome
      Escreva("1) Informe seu nome: ")
      Leia(pessoa[index].nome)

      // Se nome for igual vazio sair do loop
      Se(pessoa[index].nome = "") entao
         quantCadastrada <- quantCadastrada - 1
         Interrompa
      FimSe

      Timer(300)

      // Idade
      Escreva("2) Informe uma senha: ")
      Leia(pessoa[index].senha)
      Se(pessoa[index].senha = "") entao
         EscrevaL(" Informa��o Invalida! ")
         Interrompa
      FimSe

      Timer(300)

      // Localiza��o
      EscrevaL("3) Infome sua localiza��o (Estado/Cidade/Bairro): ")
      Leia(destino[index].local)
      Se(destino[index].local = "") entao
         EscrevaL(" Informa��o Invalida! ")
         Interrompa
      FimSe

      Timer(300)

      //
      EscrevaL("4) Informe um destino: ")
      Leia(destino[index].destino)

      EscrevaL(" Cadastro concluido.")
      EscrevaL("")
   FimPara

   Timer(300)

   EscrevaL("Caregando Resgistros dos Clientes: ...")
   Se(quantCadastrada < 5) entao
      Timer(300) // 300ms
   SeNao
      Timer(500) // 500ms
   FimSe
   Para index de 1 ate cadastroClientes faca
      EscrevaL("")
      EscrevaL("Cliente >> ", index)
      EscrevaL("Nome do Clietne: ", pessoa[index].nome)
      EscrevaL("Localiza��o do Cliente: ", destino[index].local)
      EscrevaL("Destino Escolhido:", destino[index].destino)
   FimPara
Fimalgoritmo