# frozen_string_literal: true

# função que percorre a linha de instrução do programa para verificar cada campo da instrucao
def trabalhar_instrucao(instrucao)
  posicao_instrucao = 0 # !|2| # h

  instrucao_atual = instrucao[posicao_instrucao]
  posicao_instrucao += 1 # !2| |# h

  if instrucao[posicao_instrucao] != ' '
    instrucao_atual = "#{instrucao_atual}#{instrucao[posicao_instrucao]}"
    posicao_instrucao += 1
  end
  instrucao_atual = instrucao_atual.to_i if instrucao_atual != 's'

  posicao_instrucao += 1 # !2 |#| h

  simbolo_ler = instrucao[posicao_instrucao] if instrucao[posicao_instrucao] != ' '
  posicao_instrucao += 2 # !2 # |h|

  proxima_instrucao = instrucao[posicao_instrucao]
  posicao_instrucao += 1 # !5   3| |a

  if instrucao[posicao_instrucao] != ' '
    proxima_instrucao = "#{proxima_instrucao}#{instrucao[posicao_instrucao]}"
    posicao_instrucao += 1
  end

  proxima_instrucao = if !proxima_instrucao.include?('h')
                        proxima_instrucao.to_i
                      else
                        'h'
                      end

  posicao_instrucao += 1 # !5   3 |a|

  if instrucao[posicao_instrucao].class != NilClass
    if (instrucao[posicao_instrucao].ord != 32) && (instrucao[posicao_instrucao].ord != 10)
      simbolo_escrever = instrucao[posicao_instrucao]
    end
  else
    simbolo_escrever = ''
  end
  [instrucao_atual, simbolo_ler, proxima_instrucao, simbolo_escrever]
end

# Função principal 
# Em loop, verifica cada linha do programa de entrada, se der match com o campo de instrução atual
# e o primeiro campo da fila, é executada a instrução e alterado os campos conforme.

def post_machine(programa, entrada)
  posicao_instrucao = 0
  instrucao_atual = 's'
  contador = 0

  loop do
    while posicao_instrucao <= programa.size
      instrucao_linha = programa[posicao_instrucao]
      break unless instrucao_linha.class != NilClass

      instrucao = trabalhar_instrucao(instrucao_linha)

      if instrucao_atual == 'h'
        puts instrucao_atual.to_s
        puts 'ACEITO'
        exit
      end

      if instrucao[0] == instrucao_atual
        if (instrucao[1] != '') && (instrucao[1].class != NilClass) && (instrucao[1] == entrada.first.value)
          entrada.pop
          instrucao_atual = instrucao[2]
          puts "após leitura #{entrada}"
        elsif instrucao[3] != '' && instrucao[3].class != NilClass
          entrada << instrucao[3]
          instrucao_atual = instrucao[2]
          puts "após inserção #{entrada}"
        elsif instrucao[1] == '' || instrucao[1].class == NilClass
          instrucao_atual = instrucao[2]
          exit if instrucao_atual.zero?
          puts "após pulo incondicional #{entrada}"
        end
      end

      posicao_instrucao += 1
    end
    posicao_instrucao = 0
    contador += 1
    if contador > 1000
      puts "Acima do numero de instrucoes #{entrada}"
      exit
    end
  end
end
