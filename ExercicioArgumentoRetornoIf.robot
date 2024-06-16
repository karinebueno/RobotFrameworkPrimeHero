*** Settings ***

Documentation   Exercício Argumentos e Retornos If

*** Variable ***

#Tipo Simples
&{DADOS_PESSOAL}    AnoAtual=2024
${Idade}                     32     

*** Test Cases ***
Caso de teste do exercicio 02
    Verificar ano de nascimento

*** Keywords ***
Verificar ano de nascimento
    
    
    ${AnoDeNascimento} =    Evaluate    int(${DADOS_PESSOAL.AnoAtual}) - ${Idade}

    Log To Console    \n
    IF    ${AnoDeNascimento} < 2000
        Log To Console    "Você nasceu no século passado, no ano de ${AnoDeNascimento}."
    END
    Log To Console    \n
