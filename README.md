# Post_Machine
Trabalho de implementação de uma Post machine para a Matéria de Teoria da Computação, realizado em conjunto com meu ilustríssimo colega [Gabriel Haddad](https://github.com/GHVieira).

## Arquivos
    decode_entry.rb -> decodifica a entrada do programa

    fila.rb -> Cria uma classe fila para administrar a fita da máquina

    main.rb -> Função principal de gerenciamento

    post_machine_helpers.rb -> funções auxiliares como conversão de string para Fila

    post_machine.rb -> as operações básicas da máquina

## Exemplos
    entrada1.txt -> Aceita uma sequencia de a's seguida pelo mesmo número de caracteres b.

    entrada2.txt -> Aceita uma entrada com o mesmo número de a's e b's independente da posição.

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


## DETALHES FORMAIS

### Definição Formal da Máquina de Post

A definição da Máquina de post se dá por um autômato determinístico com base na
estrutura de dados definida como fila e fazendo uso de um símbolo auxiliar. Se trata, então,
de uma máquina que possui estados finitos e fila de tamanho ilimitado. Cada alteração da
máquina lê o símbolo da cabeça da fila, em seguida remove um número fixo de símbolos da
cabeça e, no final, concatena uma palavra-símbolo já definida ao que foi removido.\
\
É definida como uma tripla **M=(Σ,D,#)**, na qual:\
\
    ●**Σ** - alfabeto finito de símbolos, um dos quais é um símbolo especial de parada. 
Cadeias finitas em **Σ** são chamadas de palavras.\
● **D** - regras de produção, atribuindo uma palavra **D(x)** para cada símbolo em **Σ**. A
produção atribuída ao símbolo de parada é vista abaixo e não possui influência nas
computações, mas por conveniência usa-se **D(H) = H**\
● **#** - inteiro positivo auxiliar, chamado de número de deleção.\
\
Há, também, a definição de Rogozhin para a Máquina de Post-#, termo para enfatizar o uso
do símbolo auxiliar.\
\
● Palavra de parada é a palavra que começa com o símbolo de parada ou tem o
comprimento menor que m.\
● Uma transformação t definida no conjunto de palavras que não param\
● Usar o símbolo de parada para a definição acima permite à saída ser codificada na
palavra final sozinha.\
\
REFERÊNCIAS:\
COHEN, Daniel; Introduction to Computer Theory; 1946.

