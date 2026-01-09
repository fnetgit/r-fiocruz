# Criando variáveis condicionais com if_else
# Estrutura: mutate(nova_coluna = if_else(TESTE, VALOR_SE_VERDADE, VALOR_SE_FALSO))

# Criar variável SEXO padronizada (sexo_p) usando if_else aninhado
df_csv <- df_csv %>%
  mutate(
    sexo_p = if_else(SEXO == 1, "Masculino",
                     if_else(SEXO == 2, "Feminino",
                             if_else(SEXO == 0, "Ignorado", NA_character_)))
  )

# VERIFICAÇÃO
# Antes (vendo os números originais)
df_csv %>% count(SEXO)

# Depois (vendo os textos padronizados)
df_csv %>% count(sexo_p)
