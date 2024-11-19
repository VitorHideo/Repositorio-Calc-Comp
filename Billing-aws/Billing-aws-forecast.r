install.packages("forecast")
install.packages("ggplot2")

library(forecast)
library(ggplot2)

meses <- c("Jun 2023", "Jul 2023", "Ago 2023", "Set 2023", "Out 2023", "Nov 2023", "Dez 2023", "Jan 2024", "Fev 2024", "Mar 2024", "Abr 2024", "Mai 2024", "Jun 2024" , "Jul 2024", "Ago 2024", "Set 2024", "Out 2024", "Nov 2024") 
custos <- c(0.10, 0.28, 0.68, 0.30, 0.58, 0.70, 1.24, 1.10, 1.37, 0.72, 0.80, 1.80, 1.62, 1.61, 2.32, 1.36, 1.75, 1.80) 

# Criar uma série temporal (Time Series) - para realizar a previsão para os proximos 6 meses
custo_temporal <- ts(custos, start = c(2023, 6), frequency = 12) 

custo_temporal 

#Gráfico linear do custo de jun2023 até nov2024
plot(custo_temporal, 
     main = "Gasto Mensal da AWS - Gráfico Linear", 
     xlab = "Ano", 
     ylab = "Gasto (USD)", 
     lwd = 2)

# Aplicar o modelo de previsão ARIMA
# arima é um modelo estatistico utilizado para prever valores de uma serie temporal
modelo <- auto.arima(custo_temporal)
summary(modelo)

# Prever os custos para os próximos 6 meses
# forecast é utilizado para projetar os valores futuros
prev <- Arima(custo_temporal, order = c(0,1,0), seasonal = c(0,1,0))
previsao <- forecast(prev, h = 6)
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
     main = "Gráfico Linear - Previsão de Gasto Mensal da AWS", 
     xlab = "Ano", 
     ylab = "Gasto (USD)", 
     col = "black", 
     lwd = 2)
lines(previsao$mean, col = "red", lwd = 2) 


# Gráfico de barras do gasto atual e gasto previsto
ggplot(dados, aes(x = Mês, y = Custos, fill = Custos > max(Custos))) +
  geom_bar(stat = "identity", fill= c(rep("blue", 18), rep("brown3", 6))) +
  labs(title = "Gasto Mensal da AWS - Gráfico de Barras", 
       x = "Mês", 
       y = "Gasto (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Gráfico de área do gasto atual e gasto previsto
ggplot(dados, aes(x = Mês, y = Custos, group = 1, fill = Custos > max(custos))) +
  geom_area(alpha = 0.6) +
  geom_line(size = 1) +
  scale_fill_manual(values = c("lightblue3","blue"), guide = "none") +
  labs(title = "Gasto Mensal da AWS - Gráfico de Área", 
       x = "Mês", 
       y = "Gasto (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
