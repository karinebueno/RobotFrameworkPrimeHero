*** Settings ***

Documentation   Exercício For Simples + Lista

*** Variable ***

#Tipo Lista
@{LISTA_FRUTAS}      Banana   Maça   Pera   Uva  Morango  Pêssego   Laranja     Mamão    Kiwi   Amora  Abacaxi 


*** Test Cases ***
Caso de teste do exercicio 03
    Imprimir lista de frutas

*** Keywords ***
Imprimir lista de frutas
    
    #Tipo Lista

    Log To Console    \n
    FOR    ${element}    IN    @{LISTA_FRUTAS}
        Log To Console    ${element} 
    END
    Log To Console    \n