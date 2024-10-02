valor1 <- as.numeric(readline(prompt = "Insira o primeiro valor: "))
valor2 <- as.numeric(readline(prompt = "Insira o segundo valor: "))

if (is.na(valor1) || is.na(valor2)) {
  warning("Pelo menos um dos valores inseridos não é numérico. Verifique e tente novamente.")
} else {
  maior <- ifelse(valor1 > valor2, valor1, valor2)
  cat("O maior valor entre os inseridos é:", maior, "\n")
}