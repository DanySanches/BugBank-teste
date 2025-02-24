*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource   setup_teardown.robot

Test Teardown    Fechar o navegador

*** Variables ***
${campo_email}     //input[@name='email']
${campo_senha}    //input[@type='password']
${msg_erro}       //p[contains(., 'Usuário ou senha inválido.')]

*** Test Cases ***
Scenario: Tentar fazer login com credenciais inválidas
    [Documentation]    Cenário de login com email e senha incorretos
    Dado que estou na página de login do BugBank
    Quando eu preencho o email e a senha
    E clico no botão "Acessar"
    Então devo ver a tela de login realizado com sucesso

*** Keywords ***
Dado que estou na página de login do BugBank
    Open Browser    https://bugbank.netlify.app/    Chrome
    Maximize Browser Window

Quando eu preencho o email e a senha
    Input Text    ${campo_email}    pan@gmail.com
    Input Text    ${campo_senha}    123456
    Sleep   2s
    Create Directory     screenshot_login
    Capture Page Screenshot     screenshot_login/preencher_os_campos.png 

E clico no botão "Acessar"
    Click Element    //button[contains(text(), 'Acessar')]

Então devo ver a tela de login realizado com sucesso
    Sleep   2s
    Capture Page Screenshot     screenshot_login/login_caminho_triste.png
