# Instale e carregue os pacotes necessários
if (!require(forecast)) install.packages("forecast")
if (!require(ggplot2)) install.packages("ggplot2")

library(forecast)
library(ggplot2)

# Dados de custo mensal atualizados (em USD)
meses <- c("Jun 2024", "Jul 2024", "Aug 2024", "Sep 2024", "Oct 2024", "Nov 2024")
custos <- c(0.28, 0.58, 0.72, 1.17, 1.61, 2.32)

# Criar uma série temporal (Time Series)
ts_custos <- ts(custos, start = c(2024, 6), frequency = 12)

# Visualizar os dados históricos - Gráfico de Linha
plot(ts_custos, 
     main = "Custos Mensais da AWS - Gráfico Linear", 
     xlab = "Ano", 
     ylab = "Custos (USD)", 
     col = "blue", 
     lwd = 2)

# Aplicar o modelo de previsão ARIMA
modelo <- auto.arima(ts_custos)

# Resumo do modelo
summary(modelo)

# Prever os custos para os próximos 6 meses
previsao <- forecast(modelo, h = 6)

# Visualizar a previsão no gráfico de linhas
plot(previsao, 
     main = "Previsão de Custos Mensais da AWS - Gráfico Linear", 
     xlab = "Ano", 
     ylab = "Custos (USD)", 
     col = "black", 
     lwd = 2)
lines(previsao$mean, col = "red", lwd = 2) # Média prevista

# --- Gráfico de Barras ---
# Dados para o gráfico
dados <- data.frame(Mês = c(meses, paste("Previsto", 1:6)), 
                    Custos = c(custos, as.numeric(previsao$mean)))

# Gráfico de barras com ggplot2
ggplot(dados, aes(x = Mês, y = Custos, fill = Custos > max(custos))) +
  geom_bar(stat = "identity") +
  scale_fill_manual(values = c("lightblue", "darkgreen"), guide = "none") +
  labs(title = "Custos Mensais da AWS - Gráfico de Barras", 
       x = "Mês", 
       y = "Custos (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# --- Gráfico de Área ---
ggplot(dados, aes(x = Mês, y = Custos, group = 1, fill = Custos > max(custos))) +
  geom_area(alpha = 0.6) +
  geom_line(color = "blue", size = 1) +
  scale_fill_manual(values = c("lightblue", "darkgreen"), guide = "none") +
  labs(title = "Custos Mensais da AWS - Gráfico de Área", 
       x = "Mês", 
       y = "Custos (USD)") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Exibir os valores previstos
print(previsao)