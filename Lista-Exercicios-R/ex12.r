dataAniversario <- as.Date("2005-09-22") 
dataHoje <- as.Date("2024-09-30") 

idadeDias <- as.numeric(dataHoje - dataAniversario)

print(idadeDias)

idadeAnos <- idadeDias / 365

print(idadeAnos)