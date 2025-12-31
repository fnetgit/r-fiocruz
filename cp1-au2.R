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


# Funções
nome_funcao(argumento1, argumento2)

# R já vem com algumas funções embutidas:
sum(1, 3)        # Calcula a soma de números.
sqrt(16)         # Calcula a raiz quadrada.
is.numeric("10") # Verifica se algo é numérico.
# factor()         Cria fatores (categorias).
# lm()             Ajusta modelos lineares.


# Pacotes em R
# install.packages("nome-do-pacote")  (terminal)

# Para ver quais funções o pacote tem:
# help(nome_do_pacote)

# Instalação
# Opção 1: Instalação usando Tidyverse
# O Tidyverse já inclui vários pacotes essenciais
install.packages("tidyverse") # Inclui: dplyr, stringr, lubridate, readr, ggplot2 e outros
install.packages("readxl")    # Leitura de arquivos Excel
install.packages("arrow")     # Leitura de arquivos Parquet

# Opção 2: Instalação individual de cada pacote
install.packages("dplyr")     # Manipulação de dados
install.packages("stringr")   # Manipulação de strings/texto
install.packages("lubridate") # Manipulação de datas
install.packages("readr")     # Leitura de arquivos CSV
install.packages("ggplot2")   # Criação de gráficos
install.packages("tibble")    # Trabalhar com tibbles (dataframes modernos)
install.packages("tidyr")     # Organização de dados
install.packages("readxl")    # Leitura de arquivos Excel
install.packages("arrow")     # Leitura de arquivos Parquet

# Carregamento
# Para utilizar pacotes é necessário carregá-los:

# Opção 1: Carregamento usando Tidyverse
library(tidyverse)  # Carrega automaticamente: dplyr, stringr, lubridate, # readr, ggplot2, tibble, tidyr, purrr e forcats
library(readxl)     # Leitura de arquivos Excel (.xlsx, .xls)
library(arrow)      # Leitura de arquivos Parquet

# Opção 2: Carregamento individual de cada pacote
library(dplyr)      # Funções: mutate, filter, select, group_by, summarise, etc.
library(stringr)    # Funções: str_sub, str_replace, str_detect, etc.
library(lubridate)  # Funções: dmy, ymd, month, year, day, etc.
library(readr)      # Funções: read_csv, write_csv
library(ggplot2)    # Funções: ggplot, geom_col, geom_point, etc.
library(tibble)     # Funções: tibble, as_tibble
library(tidyr)      # Funções: pivot_wider, pivot_longer
library(readxl)     # Funções: read_excel
library(arrow)      # Funções: read_parquet, write_parquet

# Resolução de Conflitos (Operador ::)
# nome_do_pacote::nome_da_função()

# Serve para forçar o R a usar a função de um pacote específico, evitando erros
# quando dois pacotes têm funções com o mesmo nome.

# Exemplo:
# filter()         O R pode confundir com o filtro do pacote 'stats' (padrão).
# dplyr::filter()  O R tem CERTEZA que deve usar o filtro do pacote 'dplyr'.

# Importação de Dados
# Config. Inicial
# Definir diretório de trabalho
# Altere para o caminho onde seus arquivos estão salvos no seu PC.
setwd("~/Documents/cursos/r-fiocruz")

# Verificar diretório atual (para ter certeza que mudou)
getwd()

# Importação de Dados
# Os dados são referentes ao Sistema de Informação sobre Mortalidade (SIM) de 2023, de Salvador
# Esses dados foram preparados especialmente para este curso e contêm 7 variáveis e 261 observações.

# Importar arquivo CSV
# read_csv é do pacote readr
df_csv <- read_csv("sim_salvador_2023.csv")

# Importar arquivo Excel
# Requer pacote readxl
df_xlsx <- read_excel("sim_salvador_2023.xlsx")

# Importar arquivo Parquet
# Requer pacote arrow.
df_parquet <- read_parquet("sim_salvador_2023.parquet")

# Remover dataframes duplicados da memória
rm(df_xlsx, df_parquet)

# Manipulação de Dados

# Visualizar estrutura dos dados

# A função glimpse() (do pacote dplyr/tidyverse) mostra um resumo dos dados
# de forma que caiba na largura do seu console.
glimpse(df_csv)