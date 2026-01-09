# Operadores aritméticos simples
1+2
3-2
9*2
6/3

# Criando variáveis
a <- 10
b <- 13

# Visualizar
print(a)
print(b)

#Tipos básicos
int <- 10
real <- 10.01
string <- "Fiocruz"
bool <- TRUE

#Verificar tipo
class(int)       # "numeric" 
class(real)      # "numeric"
class(string)    # "character"
class(bool)      # "logical"

# Converter tipos

# String para Inteiro ("50" -> 50)
texto_50 <- "50"
convertido <- as.integer(texto_50)
print(convertido)

# String para Numérico/Real ("90" -> 90)
string_num <- "90"
print(class(string_num)) # character

string_num <- as.numeric(string_num)
print(class(string_num)) # numeric

# Real para Inteiro (2.9 -> 2)
numreal <- 2.9
print(class(numreal)) # numeric

numreal <- as.integer(numreal)
print(class(numreal)) # integer (truncado)

# Outros tipos de objetos

# Vetores - armazenam múltiplos valores do mesmo tipo
idades <- c(25, 20, 30, 50, 13)
print(idades)

# Fatores - usados para variáveis categóricas
sexo <- factor(c("Masculino","Feminino", "Feminino", "Masculino"))
print(sexo)

# Matrizes - estruturas bidimensionais (linhas e colunas)
matriz <- matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)
print(matriz)