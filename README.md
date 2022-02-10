# robot_framework

Teste com saida do relatório em uma pasta específica
robot -d reults bdd.results bdd.robot

Teste suíte específico
robot -d results -t "Cenário 2: abrir site da globo" estrutura.robot

Rodar todos os tests
robot -d results tests

Rodar test por tags
robot -d logs/ -i long  tests/buttons.robot

Rodar test com variáveis
robot -d logs -v browser:firefox -v headless:false tests/     