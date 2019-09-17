# Post_Machine
Trabalho de implementação de uma Post machine para a Matéria de Teoria da Computação.

## Arquivos
    decode_entry.rb -> decodifica a entrada do programa\
    fila.rb -> Cria uma classe fila para administrar a fita da máquina\
    main.rb -> Função principal de gerenciamento\
    post_machine_helpers.rb -> funções auxiliares como conversão de string para Fila\
    post_machine.rb -> as operações básicas da máquina\

## Exemplos
    entrada1.txt -> Aceita uma sequencia de a's seguida pelo mesmo número de caracteres b.\

    entrada2.txt -> Aceita uma entrada com o mesmo número de a's e b's independente da posição.\

## Funcionamento conceitual

A Máquina recebe um programa pelas entradas em txt, o usuário fornece uma entrada para ser reconhecida pelo programa, essa entrada é convertida em Fila.

Em seguida, rodando o programa, se constata o estado atual, e lendo o inicio da fita ou obedecendo apenas o programa, a máquina é direcionada para outra instrução, podendo ou não escrever na fita.

O programa aceita a entrada quando se constata estar na instrução definida como 'h'.

O programa rejeita estando em um loop por mais de 1000 execuções.

## Requisitos

    Ruby >= 1.9

## Funcionamento prático (Linux)

No arquivo decode_entry se define qual das entradas txt será lida.\
executa-se o programa, estando com o terminal na pasta dos arquivos, digitando o comando:\

    ruby main.rb

em seguida será pedido a entrada do usuário, que deverá ser composta pelo alfabeto do programa de entrada, sem o simbolo auxiliar.
