programa {
  funcao inicio() {
   real saldo = 0
    real saque, deposito
    cadeia controle
    inteiro menu = 1
    cadeia extrato = ""
    cadeia senha = "0823"
    cadeia senha2
        
    enquanto(menu != 0){
      escreva("Digite sua senha :")
        leia(senha2)
        se(senha2 == senha){
          escreva("|----------MENU----------|\n")
          escreva("| 1-SALDO  R$", saldo, "           |\n")
          escreva("| 2-SAQUE                |\n")
          escreva("| 3-DEPOSITO             |\n")
          escreva("| 4-EXTRATO              |\n")
          escreva("| 0-SAIR                 |\n")
          escreva("|------------------------|\n")
          escreva("| ESCOLHA -> ")
          leia(menu)
        }
     senao 
          escreva(" Digite sua senha est� incorreta \n") 
      limpa()
      
      escolha(menu){
        
        caso 1:
        
        escreva("Saldo = ", saldo, "\n")
         
        pare
        caso 2:
        escreva("Digite sua senha :")
        leia(senha2)
        se(senha2 == senha){
        escreva("Digite o valor para sacar: ")
        leia(saque)
        enquanto(saque < 0){
          escreva("Valor invalido digite novamente: ")
          leia(saque)
          
        }
        se(saque > saldo){
          escreva("N�o autorizado!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao{
          saldo = saldo - saque
          extrato = extrato + "SAQUE ------------ R$" + saque + "\n"
          escreva("Saque realizado com sucesso!\n")
          escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa() 
        }
          
        }
        senao 
          escreva(" Digite sua senha est� incorreta \n")
        pare
        caso 3:
        escreva("Digite sua senha :")
        leia(senha2)
        se(senha2 == senha){
        escreva("Digite o valor para depositar: ")
        leia(deposito)
        enquanto(deposito<0){
          escreva("Valor invalido digite novamente: ")
          leia(deposito)
        }
        saldo = saldo + deposito
        extrato = extrato + "DEPOSITO ------------ R$" + deposito + "\n"
        escreva("Deposito realizado com sucesso!\n")
        escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
        senao {
          escreva(" Digite sua senha est� incorreta \n")}
        pare
        
        caso 4:
        escreva("Digite sua senha :")
        leia(senha2)
        se(senha2 == senha){
        escreva(extrato)
         escreva("Aperte ENTER para continuar")
          leia(controle)
          limpa()
        }
          senao {
          escreva(" Digite sua senha est� incorreta \n")}
        pare
      }
    }
  }
}
