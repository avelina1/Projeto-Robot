*** Variables ***

&{trabalheConosco}
...     btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRICULO']
...     btnCadastrarCurriculo=//a[text()='CADASTRE SEU CURRICULO']
...     inputNome//*[@id="name"]
...     cargo//*[@id="healine"]
...     salario=//*[@id="salary"]
...     email=//*[@id="email"]
...     telefone=//*[@id="phone-0"]
...     cmbPais=//*[@id="country"]
...     estado=//*[@id="region"]
...     cidade=//*[@id="city"]
...     bairro=//*[@id="neighborhood"]
...     endereco=//*[@id="adress"]
...     cep=//*[@id="zipcode"]
...     resumo=//*[@id="summaryy"]
...     btnFormacao=//button[text()='+ Adicionar formacao']
...     curriculo=//*[@id="validatedCustomFile"]
...     btnFinalizar=//button[@type='submit']
...     sucesso=//*[text()='com sucesso']

&{textForm}
...     nome=Avelina Filipe
...     cargo=Analista de Qualidade
...     salario=4.000,00
...     email=avelinafilipe@hotmail.com
...     telefone=11 959530383
...     cmbPais=BR
...     estado=SP
...     cidade=Sao Bernardo do Campo
...     bairro=Rudge Ramos
...     endereco=av sao joao batista
...     cep=09635030
...     resumo=curriculo enviado com Robot Framework
...     sucesso=sucesso