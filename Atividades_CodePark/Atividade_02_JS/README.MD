# CodePark 

## Atividade 
### Tira um print de alguma seção de uma página web na qual você tenha identificado o possível uso do JavaScript para implementar uma funcionalidadeatravés da interação do usuário(em outraspalavras, algo que não daria para fazer apenas com HTML e CSS).

### Sem a necessidade de inspecionar o elemento web, descreva da forma mais detalhada possível o comportamento que leva você a acreditar que seria necessário o uso de JS. 

![image](https://raw.githubusercontent.com/brunonavarone/Proz/main/Atividades_CodePark/Atividade_01_JS/imagem_ava_descricao.png)

A parte selecionada de vermelho na imagem mostra alguns possíveis elementos:

* um formulário com 2 inputs: um para usuário e outro para senha
* uma checkbox para salvar o usuário 
* um botão de submit (provavelmente)
* um link para recuperação de senha 

O javascript implementado nessa parte destacada pode funcionar para a validação da entrada do usuário. Assim que o usuário colocar o seu “username”, sua senha e clicar no botão “Acessar”, o javascript vai enviar as informações para o banco de dados com todos os usuários cadastrados. Vai verificar se aquele usuário existe no banco e se a senha desse mesmo usuário é compatível com a que foi digitada. 
Se as duas validações forem aprovadas, o usuário vai logar no sistema, se não, alguma mensagem de erro vai aparecer especificando o que aconteceu. 
