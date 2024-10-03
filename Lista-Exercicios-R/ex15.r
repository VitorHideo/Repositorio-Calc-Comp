# Configurando a seed
set.seed(20)

# Definindo os vendedores
vendedores <- rep(c("Ana", "Flavia", "Pedro", "Mariana"), each = 30)

# Definindo os dias
dias <- rep(1:30, times = 4)

# Definindo os produtos comercializados
produtos <- c("calçaFlaire", "calçaSkinny", "vestido", "blusa", "manta", "saia", "casaco", "meia")

# Simulando as vendas diárias (entre 0 e 5 unidades)
quantidades <- sample(0:5, 120, replace = TRUE)

# Criando o data frame com os dados simulados
vendas <- data.frame(Vendedor = vendedores, Dia = dias, Produto = sample(produtos, 120, replace = TRUE), Quantidade = quantidades)

# Visualizando os dados
head(vendas, 10)