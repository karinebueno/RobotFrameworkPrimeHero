*** Settings ***

Documentation   Exercício For In Range

*** Variables ***
${count}    0 


*** Test Cases ***
Caso de teste do exercicio
    Imprimir números pares

*** Keywords ***
Imprimir números pares

    Log To Console    \n
    FOR    ${counter}    IN RANGE    0    11
        IF    ${counter} % 2 == 0
            ${count} =  Evaluate     ${count} + 1
        END 
    END
    Log To Console   Total de números pares encontrados:${count}
    Log To Console    \n