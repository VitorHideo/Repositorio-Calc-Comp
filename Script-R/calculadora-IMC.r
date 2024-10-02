# Script IMC - Automação
dados <- data.frame(peso = numeric(), altura = numeric(), IMC = numeric(), diagnostico = character(), stringsAsFactors = FALSE)

chave <- 1
while (chave > 0) {
  
  peso <- readline(prompt = "Digite o seu peso: ") 
  peso <- as.integer(peso)
  altura <- as.numeric(readline(prompt = "Digite a sua altura: "))
  altura <- as.double(altura)
  
  IMC <- peso / (altura * altura)
  IMC_rounded <- round(IMC, 1)
  
  if (IMC < 18.5) {
    diagnostico <- "Abaixo do peso normal"
  } else if (IMC >= 18.5 & IMC < 25) {
    diagnostico <- "Peso normal"
  } else if (IMC >= 25 & IMC < 30) {
    diagnostico <- "Sobrepeso"
  } else if (IMC >= 30 & IMC < 40) {
    diagnostico <- "Obeso"
  } else if (IMC >= 40) {
    diagnostico <- "Obesidade Mórbida"
  }
  
  print(paste("IMC:", IMC_rounded))
  print(paste("Diagnóstico:", diagnostico))
  
  dados <- rbind(dados, data.frame(peso = peso, altura = altura, IMC = IMC_rounded, diagnostico = diagnostico, stringsAsFactors = FALSE))
  
  resposta <- readline(prompt = "Deseja continuar? (s/n): ")
  
  if (tolower(resposta) == "n") {
    chave <- 0  
  }
}

print("Dados armazenados:")
print(dados)