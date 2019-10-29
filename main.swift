import Foundation

system("clear")

var flag = true
var numA: Float?
var numB: Float?
var result: Float
var opt: Int?
var operacao: String?

func menu(op: Int) {
  print("")
  switch op {
  case 1:
  print("OPÇOES ***********")
  print("1 - SOMA")
  print("2 - SUBITRAÇÃO")
  print("3 - MULTIPLICAÇÃO")
  print("4 - DIVISÃO")
  print("5 - EXPONENCIAÇÃO")
  print("******************")
  case 2:
  print("Deseja reiniciar?")
  print("OPÇOES ***********")
  print("1 - SIM")
  print("2 - NÃO")
  print("******************")
  default:
  print("Nothing happened!")
  }
  
}

func soma(nA: Float, nB: Float) -> Float {
  return nA + nB
}
func subitracao(nA: Float, nB: Float) -> Float {
  return nA - nB
}
func multiplicacao(nA: Float, nB: Float) -> Float {
  return nA * nB
}
func divisao(nA: Float, nB: Float) -> Float {
  return nA / nB
}
func exponenciacao(nA: Float, nB: Float) -> Float {
  return pow(nA, nB)
}

repeat {
  system("clear")
  print("Digite o primeiro número:")
  numA = Float(readLine()!)

  print("Certo, digite agora o segundo número:")
  numB = Float(readLine()!)

  menu(op: 1)

  opt = Int(readLine()!)

  system("clear")

  switch opt {
  case 1: // SOMA
    operacao = "Soma"
    result = soma(nA: numA!, nB: numB!)
    print("A \(operacao!) entre \(numA!) e \(numB!) é \(result)!")
  case 2: // SUBITRAÇÃO
    operacao = "Subtração"
    result = subitracao(nA: numA!, nB: numB!)
    print("A \(operacao!) entre \(numA!) e \(numB!) é \(result)!")
  case 3: // MULTIPLICAÇÃO
    operacao = "Multiplicação"
    result = multiplicacao(nA: numA!, nB: numB!)
    print("A \(operacao!) entre \(numA!) e \(numB!) é \(result)!")
  case 4: // DIVISÃO
    operacao = "Divisão"
    if numB != 0 {
      result = divisao(nA: numA!, nB: numB!)
      print("A \(operacao!) entre \(numA!) e \(numB!) é \(result)!")
    } else {
      print("Impossível dividir por ZERO!")
    }
  case 5: // EXPONENCIAÇÃO
    operacao = "Exponenciação"
    result = exponenciacao(nA: numA!, nB: numB!)
    print("A \(operacao!) entre \(numA!) e \(numB!) é \(result)!")
  default:
    print("Opção Inválida!")
  }

  menu(op: 2)

  opt = Int(readLine()!)

  switch opt {
    case 1:
    print("Reiniciando")
    case 2:
    print("Tchau!")
    flag = false
    default:
    print("Opção Inválida! Reiniciando!")
  }

} while flag
