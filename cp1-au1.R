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
c <- as.integer(c)
as.numeric(d)

# Real para inteiro
c <- 2.9
class(c)
c <- as.integer(c)
class(c)
# String para inteiro
d <- "90"
class(d)
d <- as.numeric(d)
class(d)

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





