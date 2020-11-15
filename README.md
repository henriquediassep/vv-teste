# Teste para a Via Varejo

Enunciado do teste: 
```
Escolha a linguagem de programação de sua preferência para automatizar o fluxo abaixo:  

Funcionalidade: Pesquisa com o QA 
Como um recrutador
Quero colher dados da pesquisa 
Para fazer análises mais detalhadas do QA
 
Link: https://bit.ly/3jOMrR9
 
Cenário: Preencher pesquisa com dados obrigatórios válidos
Dado que eu acesse a página da VV Test
E acesse o menu "Pesquisa - QA"
Quando eu preencher todos os campos obrigatórios 
Então deve ser direcionado para uma página de sucesso

Instruções: Após desenvolver a automação, suba o projeto no GitHub (público), COPIE e COLE o link aqui.

DICAS ÚTEIS:
1- Reserve um tempo para fazer a automação, pois boas práticas serão consideradas.
2- Primeiramente, crie o repositório e já cole aqui para não correr o risco de sua internet ficar instável e perder a sessão.
3- Após salvar o repositório do github aqui, salve a questão e guarde o link final. Este link será enviado para o recrutador.
4- Qualquer problema entre em contato com o recrutador. Nosso time estará a disposição para tirar dúvidas.

Boa sorte!!!
```

## Perfis de automação

Para rodar toda automação, rode o comando 

```shell
cucumber -p <perfil da automação>
```
Sendo os perfis:

>vvteste  
>vvteste-report  

O perfil "vvteste" irá rodar a automação listada no arquivo 'vvteste.feature' e imprimir o resultado no terminal; já o perfil 'vvteste-report' além de imprimir o resultado no terminal vai gerar um arquivo html com um relatório de todos os cenários que foram rodados, podendo ser compartilhado.

## Rodando a automação localmente

Para rodar a automação localmente, é necessário ter o Ruby instalado, que pode ser feito com o seguinte comando:

```shell
sudo apt install ruby-full
```
E pra validar se a instalação teve sucesso, rode o seguinte comando que irá mostrar a versão do Ruby instalada em seu computador:

```shell
ruby --version
```
Para instalar todas as dependências listadas no arquivo Gemfile, será necessário ter o Bundler instalado. Para isso, rode o comando:

```shell
gem install bundler
```
Feito isso, rode o comando 
```shell
bundle install
```

Com isso, todas as Gems listadas no arquivo Gemfile, e suas dependências serão instaladas, e você estará pronto pra rodar os testes em seu computador!

PS.: O passo a passo listado acima foi validado e rodado em uma máquina Linux, utilizando Ubuntu na versao 20.04.01 LTS.
