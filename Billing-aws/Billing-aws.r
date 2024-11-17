install.packages("forecast")
install.packages("ggplot2")

library(forecast)
library(ggplot2)

# Dados de custo mensal de cada integrante do grupo em ordem crescente
meses <- c("Jun 2024", "Jul 2024", "Aug 2024", "Sep 2024", "Oct 2024", "Nov 2024")
custos <- c(0.28, 0.58, 0.72, 1.17, 1.61, 2.32)

# Criar uma série temporal (Time Series) - para realizar a previsão para os 6 meses futuros
custo_temporal <- ts(custos, start = c(2024, 6), frequency = 12)

#Gráfico linear do custo de jun até nov
plot(custo_temporal, 
     main = "Custos Mensais da AWS - Gráfico Linear", 
     xlab = "Ano", 
     ylab = "Custos (USD)", 
     lwd = 2)


# Aplicar o modelo de previsão ARIMA
# arima é um modelo estatistico utilizado para prever valores de uma serie temporal
modelo <- auto.arima(custo_temporal)
summary(modelo)


# Prever os custos para os próximos 6 meses
# forecast é utilizado para projetar os valores futuros
previsao <- forecast(modelo, h = 6)

# Exibir os valores previstos
print(previsao)

# Criando dataframe com os dados atuais e previstos
dados <- data.frame(
  Mês = c(meses, paste("Previsto", 1:6)), 
  Custos = c(custos, as.numeric(previsao$mean))
)

# Ajustar a ordem dos meses e previsões
dados$Mês <- factor(dados$Mês, levels = c(meses, paste("Previsto", 1:6)))


# Gráfico de linhas com a previsão para os proximos 6 meses
plot(previsao, 
     main = "Previsão de Custos Mensais da AWS - Gráfico Linear", 
     xlab = "Ano", 
     ylab = "Custos (USD)", 
     col = "black", 
     lwd = 2)
lines(previsao$mean, col = "red", lwd = 2) # Média prevista


# Gráfico de barras do gasto atual e gasto previsto
ggplot(dados, aes(x = Mês, y = Custos, fill = Custos > max(custos))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("lightblue3", "blue"), guide = "none") +
  labs(title = "Custos Mensais da AWS - Gráfico de Barras", 
       x = "Mês", 
       y = "Custos (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Gráfico de área do gasto atual e gasto previsto
ggplot(dados, aes(x = Mês, y = Custos, group = 1, fill = Custos > max(custos))) +
  geom_area(alpha = 0.6) +
  geom_line(color = "blue", size = 1) +
  scale_fill_manual(values = c("lightblue3", "blue"), guide = "none") +
  labs(title = "Custos Mensais da AWS - Gráfico de Área", 
       x = "Mês", 
       y = "Custos (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
