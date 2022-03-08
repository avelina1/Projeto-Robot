*** Settings ***

Library  seleniumLibrary
Resource  ${EXECDIR}/Pages/trabalhe_conosco.robot
Suite setup  Open Browser  about:blank  chrome
Suite Teardown  Close Browser

*** Variables ***
${url}= http://www.primecontrol.com.br/trabalhe-conosco/

*** Test Cases ***
Test
    GO TO ${url}
    Click Element   ${trabalheConosco.btnAccept}
    Click Element   ${trabalheConosco.btnCadastrarCurriculo}
    Switch Window   New
    Input Text  ${trabalheConosco.nome}  ${textForm.nome}
    Input Text  ${trabalheConosco.cargo}  ${textForm.cargo}
    Input Text  ${trabalheConosco.salario}  ${textForm.salario}
    Input Text  ${trabalheConosco.email}  ${textForm.email}
    Input Text  ${trabalheConosco.telefone} ${textForm.telefone}
    Select From Lis By value  ${trabalheConosco.cmbPais}  ${textForm.cmbPais}
    Input Text  ${trabalheConosco.estado}  ${textForm.estado}
    Input Text  ${trabalheConosco.cidade}  ${textForm.cidade}
    Input Text  ${trabalheConosco.bairro}  ${textForm.bairro}
    Input Text  ${trabalheConosco.endereco}  ${textForm.endereco}
    Input Text  ${trabalheConosco.cep}  ${textForm.cep}
    Input Text  ${trabalheConosco.resumo}  ${textForm.resumo}
    Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/Curriculo.pdf
    Wait Until Page Contains Curriculo.pdf 30
    Scroll Element Into View  ${trabalheConosco.btnFinalizar}
    Click Element  ${trabalheConosco.btnFinalizar}
    Wait Until Element contains ${trabalheConosco.sucesso}  ${textForm.sucesso}  30