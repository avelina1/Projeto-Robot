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
    Input Text  ${trabalheConosco.nome} ${preencheCampos.nome}
    Input Text  ${trabalheConosco.cargo} ${preencheCampos.cargo}
    Input Text  ${trabalheConosco.salario} ${preencheCampos.salario}
    Input Text  ${trabalheConosco.email} ${preencheCampos.email}
    Input Text  ${trabalheConosco.telefone} ${preencheCampos.telefone}
    Select From Lis By value  ${trabalheConosco.cmbPais}  ${preencheCampos.cmbPais}
    Input Text  ${trabalheConosco.estado} ${preencheCampos.estado}
    Input Text  ${trabalheConosco.cidade} ${preencheCampos.cidade}
    Input Text  ${trabalheConosco.bairro} ${preencheCampos.bairro}
    Input Text  ${trabalheConosco.endereco} ${preencheCampos.endereco}
    Input Text  ${trabalhe_conosco.cep} ${preencheCampos.cep}
    Input Text  ${trabalheConosco.resumo} ${preencheCampos.resumo}
    Choose File  ${trabalheConosco.curriculo}  ${EXECDIR}/Curriculo.pdf
    Wait Until Page Contains Curriculo.pdf 30
    Scroll Element Into View  ${trabalheConosco.btnFinalizar}
    Click Element  ${trabalheConosco.btnFinalizar}
     Wait Until Element contains ${trabalheConosco.sucesso}  ${preencheCampos.sucesso}  30