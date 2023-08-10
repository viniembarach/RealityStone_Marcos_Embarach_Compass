Esses dois dias foram dedicatos para aprender comandos do Git e GitHub.

Main: branch principal, nela abrigamos o código funcional que está entregue em produção;
Develop: branch que recebe todas as modificações candidatas para implantação em produção;
Feature: branches dedicadas para o desenvolvimento de novas funcionalidades que, quando prontas, serão adicionadas à branch Develop;



git init: para criar repositório
git status: para ver as modificações que não foram adicionadas para a área de staging
git log: para ver os últimos commits e autores
git add nomedoarquivocriado: para colocar o arquivo criado dentro da área de stagings
git commit -m “mensagem do commit”: para commitar colocar uma mensagem objetiva
git branch -M main:
Copia o link do github do repositório
git remote add origin https://github.com/viniembarach/ProjetoGit.git: para mandar as coisa do repositório da máquina para o repositório do git: faça essa conexão do repositório local para o do github
git push -u origin main: fazendo o push empurrão para o github 

versionamento 
git add .: assim ele vai mandar todos os arquivos que foram alterados ou adicionados para mandar para a área de staging
depois
git commit -m “Mensagem”: para colocar os arquivos dentro do repositório da máquina
depois não precisa colocar o remote add… pq ja fez a conexão com o github
git push origin main:

Ver historico de versões
git reflog: Ver as versões adicionadas até o momento e mostrar os modelos
git reset -–hard CodigoDaVersão: para voltar uma versão ou ir para uma versão mais atual

Branch Ramificação do projeto para desenvolver alguma feature adicionar páginas novas
git branch: para ver as branchs disponível
git checkout -b “nome dela”: criar nova branch e saída da branch atual Main e indo para a nova   e tudo que eu alterar no projeto vai ser na brach novo botão e não no projeto
git add .: adicionar tudo
git commit -m “novo botao”: adicionar junto ao commit a branch
git push origin novo-botao: para mandar ele para o github

para mudar algo na main 
git checkout main: para voltar para a branch principal main ou ir para outras(trocar o nome dela)

Git Merge pegar a branch e juntar com a principal
tem que estar na main
git merge novo-botao: para juntar a branch main com a novo-botao
git push origin main: mandar todas as alterações que juntou 


pegar um repositório de outro alguém e puxar para a máquina minha
pegar o link do repositório -> criar uma pasta no computador -> entrar nela a abrir o git bash(terminal)
git clone e o link do repositorio: e ele puxa o projeto do repositório
se fizer uma alteração 
da um cd e o nome do projeto 
git pull: atualiza

Git ignore para ignorar o arquivo na hora de adicionar
touch .gitignore: para criar o comando de ignorar
depois ir no arquivo do gitignore e colocar o arquivo ou pasta que não quer mandar 
colocar o nome e uma barra EX: pasta/(para Pastas) readme.md(para arquivos)
