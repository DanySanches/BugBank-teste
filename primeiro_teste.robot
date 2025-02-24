*** Settings *** 

Library    SeleniumLibrary

*** Test Cases ***

Abrir o navegador para acessar o site BugBank
     Open Browser  url=https://bugbank.netlify.app/  browser=Chrome
     Sleep    2s   # Dá um tempo para a página carregar
     Capture Page Screenshot     Screenshots/carregarPagina.png
     