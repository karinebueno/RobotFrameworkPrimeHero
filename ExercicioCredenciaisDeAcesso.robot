*** Settings ***



Test Setup        Conecta ao sistema
Documentation     Exercício Credenciais de Acesso
Test Teardown     Encerra o sistema 
Library    Collections
Library    BuiltIn

*** Variables ***
&{CREDENCIAIS}    Usuário= karinebueno    Senha= 123456


*** Test Cases ***
Caso de teste do exercicio
    Trocar valor da senha
    Log      Dicionário de credenciais após alteração: ${CREDENCIAIS}

*** Keywords ***

Conecta ao sistema
    Log    Credenciais antes da alteração: ${CREDENCIAIS}

Trocar valor da senha 
    ${CREDENCIAIS['Senha']} =    Set Variable    654321
    Log   Credenciais após a alteração: ${CREDENCIAIS}

Encerra o sistema
    Log    Credenciais antes de restaurar: ${CREDENCIAIS}
    ${CREDENCIAIS['Senha']} =    Set Variable    123456
    Log To Console    \n
    Log    Credenciais após restaurar: ${CREDENCIAIS}
    Log To Console    ${CREDENCIAIS}
    Log To Console    \n