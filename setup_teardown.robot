*** Settings *** 

Library    SeleniumLibrary

*** Keywords ***

Abrir o navegador 
     Open Browser  url=https://bugbank.netlify.app/  browser=Chrome
     Sleep    2s   # Dá um tempo para a página carregar
     Capture Page Screenshot     Screenshots/carregarPagina.png 
     Maximize Browser Window

Fechar o navegador
    Close Browser 
     