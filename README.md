# SPRINT 1 (1/2023) - LuminusTECH
Calculadora financeira, protótipo e banco de dados realizados durante o desenvolvimento da sprint 1.
Desenvolvido junto com a equipe da <b>LuminusTECH</b>.

## Monitoramento de dados
Na criação dessa ideia (para fins educacionais), pesquisamos sobre gastos de energia que poderiam ser evitados com sensores IOTs, entramos específicamente no segmento de galpões, e com mais pesquisas percebemos que os sensores IOTs podem economizar até <b>75%</b> dos gastos com energia elétrica dos clientes, criamos a LuminusTech para monitorar os dados dos clientes e garantir a sustentabilidade dentro e fora da sua empresa.<br>
Saiba mais sobre o projeto:

## Calculadora Financeira
Acesse o HTML <a href="indexCalculadora.html">aqui</a>.<br>
Acesse o back-end <a href="scriptCalculadora.jr">aqui</a>.
### Entendendo a calculadora:
A calculadora financeira é uma das partes mais importantes no desenvolvimento desse projeto, pois atravéz dela que o cliente pode se basear, e atravéz dela mostramos para o cliente a <b style="color: green;">economia</b> que ele pode ter com nosso monitoramento, desenvolvemos seu design em código baseado no nosso protótipo do site institucional.<br>
 Na imagem abaixo, temos as entradas principais, que são a quantidade de Kwh (dado fácilmente encontrado na conta de luz), e a bandeira (também facilmente encontrado) que dependendo da sua, contém uma taxa (falaremos dela mais pra frente):
#### <img src="https://user-images.githubusercontent.com/125743142/230957527-c1abfe7a-cf4f-4031-95ac-ec8832d748fe.PNG" alt="Tela 1" />
Após colocar os dados e clicar no botão, receberá abaixo dele uma mensagem que mostra a quantidade que você perde, e quanto você pode economizar (detalhe para o calculo de 6 a 12 meses):
#### <img src="https://user-images.githubusercontent.com/125743142/230957550-b4cb6612-f56c-4ecd-870b-217695f28a20.PNG" alt="Tela 2" />
Sobre as bandeiras, no código temos três: verde, amarela e vermelha, a conta foi baseada em cima dos dados que coletamos da Enel, onde verde não contém nenhuma taxa, apenas o valor padrão (R$0.92), mas a amarela e a vermelha contém taxas, que dependendo de quantos Khw você gasta, pode ser um preço absurdo, como por exemplo:
#### <img src="https://user-images.githubusercontent.com/125743142/230957558-7c004532-14fa-468c-988f-190b3e721a13.PNG" alt="Tela 3" />
E por fim, adicionamos também um cálculo básico que pergunda a área do seu galpão, e com isso mostramos quantos sensores serão necessários, e quanto será seu investimento inicial por conta desses gastos com sensores:
#### <img src="https://user-images.githubusercontent.com/125743142/230957543-d4ae52bb-8fe5-4a7a-92db-d30b658cc34a.PNG" alt="Tela 4 (Área)" />
### Por trás do código
 Usamos apenas IF (restrição dada pelo professor Caio de Algoritmos)<br>
 Criamos as variáveis para guardar um valor que será usado posteriormente, como os Kwh e as bandeiras informadas pelo usuário:
#### <img src="https://user-images.githubusercontent.com/125743142/230957865-20ef9b0a-6f8e-4416-bd45-5d78051aefc2.png" alt="Kwh e bandeiras" />
Após validar a bandeira escolhida, dentro da estrutura, temos mais um cálculo, que mostrará para o cliente a quantidade de perda e economia:
### <img src="https://user-images.githubusercontent.com/125743142/230957862-045f3c7d-bd1e-4392-b5b6-c42ef56df8b4.png" alt="Total de prejuízo e economia" />
E por fim, o cálculo da área informada pelo cliente, multiplicado pela quantidade e preço do sensor, mostrando o valor de investimento inicial:
#### <img src="https://user-images.githubusercontent.com/125743142/230961870-3a33a9de-980a-4037-8185-dc03732ad06a.png" alt="Total de investimento">

<b style="color: green;">.toFixed()</b> - função nativa do Javascript, como já diz o nome, ele fixa <b>X</b> casas decimais após a vírgula.

## Banco de dados
Acesse <a href="tabelaLuminusTech.sql">aqui</a>.
4 entidades, dentre elas: cadastro por CPF, por CNPJ, sensores e dados do sensor de movimento, com diversos atributos que fazem sentido com o protótipo do site.

## Protótipo do site
#### <img src="https://user-images.githubusercontent.com/125743142/230957645-208c67bc-8fdb-4b9e-9700-4a70b758cffb.png" alt="Página Inicial"/>
#### <img src="https://user-images.githubusercontent.com/125743142/230957654-e8e57fc1-cf11-4321-9188-1bddff20cf7d.png" alt="Sobre Nós" />
#### <img src="https://user-images.githubusercontent.com/125743142/230957620-fefc2878-417c-4528-8955-1991dc6a160d.png" alt="Diagrama de Negócio (etapas)"/>
#### <img src="https://user-images.githubusercontent.com/125743142/230957659-ba46b7e6-ce39-4987-bf03-5ce2484a4345.png" alt="Tecnologia"/>
#### <img src="https://user-images.githubusercontent.com/125743142/230957631-8bf2c079-c36f-4425-a42b-139d5a321b7d.png" alt="Nossa Equipe"/>
#### <img src="https://user-images.githubusercontent.com/125743142/230957627-77b05cf7-7005-4ff7-b975-1836c6bfea57.png" alt="Footer"/>

## Realização
LUMINUSTECH© - Equipe da Sprint 1 - 1ADSB
#### Daniel Rios
#### Lucas Santos (eu)
#### Luís Felipe
#### Murilo Mazzoni
#### Noá Miglio
#### Rafael Reis