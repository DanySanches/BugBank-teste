# 📌 Guia Completo: Robot Framework 🚀

## 📥 Instalação e Configuração

### 🔧 1. Instalar o Python

Acesse Python Downloads e instale a versão mais recente.

## 📦 2. Instalar as Bibliotecas Necessárias

Abra o terminal (CMD) e execute:

```
  pip install robotframework
  pip install --upgrade robotframework-seleniumlibrary
```

## 🌍 3. Instalar o ChromeDriver

Verifique a versão do seu navegador:

Clique nos 3 pontinhos no Chrome > Ajuda > Sobre o Google Chrome

Baixe a versão compatível:

ChromeDriver Downloads

Extraia o chromedriver.exe e copie para a pasta C:\Windows\System32.

## 🌐 Sites para Treinamento

🔹 BugBank

🔹 OrangeHRM

## 💻 Configuração do VS Code

Baixe o VS Code

Instale a extensão do Robot Framework

Crie um arquivo de teste com a extensão .robot

### 📜 Estrutura do Robot Framework

## 🛠️ 1. Configurações (Settings)

Aqui definimos bibliotecas, recursos e configurações do teste:

```
*** Settings ***
Library    SeleniumLibrary
Resource   setup_teardown.robot

```

## 🎯 2. Variáveis (Variables)

Armazenamos valores reutilizáveis como URLs, seletores e credenciais:

```
*** Variables ***
${URL}    https://bugbank.netlify.app/
${BOTAO_REGISTRAR}    //button[contains(text(), 'Registrar')]

```

## 🏗️ 3. Ações (Keywords)

Criamos funções personalizadas para organizar os testes:

```
*** Keywords ***
Clicar no botão Registrar
    Wait Until Element Is Visible    ${BOTAO_REGISTRAR}
    Click Element    ${BOTAO_REGISTRAR}
```

## 📌 4. Casos de Teste (Test Cases)

Criamos os cenários de teste:

```
*** Test Cases ***
Cadastro de Usuário
    Clicar no botão Registrar
    Input Text    ${campo_email}    teste@teste.com
    Input Text    ${campo_senha}    123456
    Click Element    ${BOTAO_CADASTRAR}

```

## 📸 Captura de Tela nos Testes

O Robot Framework permite tirar screenshots automaticamente.

# 🖼️ 1. Instalar Pillow

```
pip install pillow

```

## 📷 2. Criar um diretório para armazenar as capturas

```

Create Directory    screenshots

```

## 📸 3. Capturar a tela

```
Capture Page Screenshot    screenshots/teste.png
```

## 🏗️ Criando uma Suíte de Testes

Para organizar melhor os testes, criamos um arquivo setup_teardown.robot:

```
*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    Chrome
    Maximize Browser Window

Fechar o navegador
    Close Browser
```
No arquivo principal, importamos esse recurso:

```

*** Settings ***
Resource    setup_teardown.robot
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

```

## 📜 Criando Testes no Formato BDD 📝

O Robot Framework suporta Behavior-Driven Development (BDD):

```

*** Test Cases ***
Scenario: Teste de Login Inválido
    [Documentation]    Teste para validar erro de login
    Dado que estou na página de login
    Quando eu insiro credenciais inválidas
    Então vejo a mensagem de erro
```

E as palavras-chave associadas:

```

*** Keywords ***
Dado que estou na página de login
    Open Browser    ${URL}    Chrome

Quando eu insiro credenciais inválidas
    Input Text    ${campo_email}    email@invalido.com
    Input Text    ${campo_senha}    senhaerrada
    Click Element    ${BOTAO_ENTRAR}

Então vejo a mensagem de erro
    Wait Until Element Is Visible    ${MSG_ERRO}
```

### 🎯 Conclusão

✅ O Robot Framework facilita a automação de testes com uma sintaxe clara e poderosa.
✅ Ele suporta integração com Selenium, BDD e captura de tela.
✅ Organizar os testes com Keywords e Variáveis melhora a manutenção.

Agora é só testar e automatizar tudo! 🚀🔥

## ✍️ Autoria

# 📌 Danielle Sanches
# 📌 Assistência e Revisão: ChatGPT

## 📚 Referências

# 🔹 [Curso Alura - Robot Framework e BDD](https://cursos.alura.com.br/course/robot-framework-testes-padrao-bdd/task/126808)
# 🔹 [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)

