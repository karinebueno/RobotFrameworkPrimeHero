*** Settings ***

Documentation   Exercício DICIONARIO

*** Variable ***

#Tipo Dicionário
&{DADOS_PESSOAL}                     Nome=Joao Silva   Idade=32    Rua=Rua das Flores  Número=123   CEP=12345-678    Bairro=Jardim Primavera    Cidade=São Paulo    Estado=São Paulo

*** Test Cases ***
Caso de teste do exercicio 01
    Uma keyword qualquer 01

*** Keywords ***
Uma keyword qualquer 01
    
    #Dicionário
    
    Log To Console    \n
    Log To Console    Nome: ${DADOS_PESSOAL.Nome}
    Log To Console    Idade: ${DADOS_PESSOAL.Idade}
    Log To Console    Rua: ${DADOS_PESSOAL.Rua}
    Log To Console    Número: ${DADOS_PESSOAL.Número}
    Log To Console    CEP: ${DADOS_PESSOAL.CEP}
    Log To Console    Bairro: ${DADOS_PESSOAL.Bairro}
    Log To Console    Cidade: ${DADOS_PESSOAL.Cidade}
    Log To Console    Estado: ${DADOS_PESSOAL.Estado}
    Log To Console    \n
