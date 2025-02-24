*** Settings *** 

Library    SeleniumLibrary
Library    OperatingSystem
Resource   setup_teardown.robot

Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

*** Variables ***

${campo_email}     //form[contains(@class, 'ContainerFormRegister')]//input[@name='email']
${campo_nome}    //input[@name = 'name']
${campo_senha}    //form[contains(@class, 'ContainerFormRegister')]//input[@type= 'password']
${campo_confimar_senha}    //input[@name = 'passwordConfirmation']

*** Keywords ***
Clicar no botão Registrar
    Click Element    //button[contains(text(), 'Registrar')]

Clicar no botão Cadastrar
    Click Element    //button[contains(text(), 'Cadastrar')]

*** Test Cases ***
Criar o cadastro no BugBank
    Clicar no botão Registrar
    Sleep   2s
    Create Directory     screenshot_cadastro
    Capture Page Screenshot     screenshot_cadastro/click_botao.png 


    Input Text    ${campo_email}    nina@cat.com
    Input Text    ${campo_nome}     Nina Cat
    Input Text    ${campo_senha}    12345
    Input Text    ${campo_confimar_senha}    12345

   Click Element    id= toggleAddBalance  

    Sleep   2s
    Capture Page Screenshot     screenshot_cadastro/cadastro_com_sucesso.png 

   Clicar no botão Cadastrar   

    Sleep   2s
    Capture Page Screenshot     screenshot_cadastro/cadastro_completo.png 


    


