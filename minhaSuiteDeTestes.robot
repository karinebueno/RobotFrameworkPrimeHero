*** Settings ***
Documentation   Minha Suíte de Teste
Library         Collections
Library         OperatingSystem
*** Test Cases ***
Executar Todos os Testes Menos o Segundo
    Run Keywords
        Teste Exercicio Dicionário
        Teste Exercicio For Simples Lista
        Teste Exercicio For in Range
        Teste Exercicio Credenciais de Acesso
    [Teardown]    Teardown da Suíte de Teste

*** Keywords ***
Setup da Suíte de Teste
    # Implemente aqui qualquer inicialização necessária para a suíte de testes
    Log    Inicializando a suíte de testes...

Teardown da Suíte de Teste
    # Implemente aqui qualquer limpeza necessária após a execução dos testes
    Log    Finalizando a suíte de testes...

Teste Exercicio Dicionário
    [Documentation]    Executar Exercício Dicionário
    [Tags]    ExercicioDicionario
    OperatingSystem.Get File     C:\\Workspace\\RobotFrameworkPrimeHero\\ExercicioDicionario.robot

Teste Exercicio For Simples Lista
    [Documentation]    Executar Exercício For Simples Lista
    [Tags]    ExercicioForSimplesLista
    OperatingSystem.Get File     C:\\Workspace\\RobotFrameworkPrimeHero\\ExercicioForSimplesLista.robot

Teste Exercicio For in Range
    [Documentation]    Executar Exercício For in Range
    [Tags]    ExercicioForInRange
    OperatingSystem.Get File     C:\\Workspace\\RobotFrameworkPrimeHero\\ExercicioForInRange.robot

Teste Exercicio Credenciais de Acesso
    [Documentation]    Executar Exercício Credenciais de Acesso
    [Tags]    ExercicioCredenciaisDeAcesso
    OperatingSystem.Get File     C:\\Workspace\\RobotFrameworkPrimeHero\\ExercicioCredenciaisDeAcesso.robot
