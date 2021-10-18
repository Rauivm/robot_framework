# Robotframework

## Introdução
Esse teste acessa o seguinte "app" http://sampleapp.tricentis.com/101/app.php e realiza as seguintes tarefas.

1. Enter Vehicle Data
2. Enter Insurant Data
3. Enter Product Data
4. Select Price Option
5. Send Quote
6. Tira print da confirmação de envio.

## Instalação

Robot Framework é implementado com Python, então é necessário ter o Python instalado.
Em máquinas Windows, certifica-se de adiiconar Python ao PATH durante a instalação.

Instalar Robot Framework com pip é simples:

pip install robotframework


Para verificar se a instalação teve sucesso, execute a linha de comando

robot --version

Para executar esse teste pelo terminal, acesse o diretório dos arquivos e digite:

robot TestCase.robot
