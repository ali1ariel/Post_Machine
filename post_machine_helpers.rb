# frozen_string_literal: true

def catch_entrada(entrada_string)
  entrada = LinkedList::Filo.new

  cont = 0
  while cont < entrada_string.size
    entrada << entrada_string[cont]
    cont += 1
  end
  entrada
end

def faz_parte_do_alfabeto(entrada, alfabeto)
  node = entrada.first
  until node.nil?
    unless alfabeto.include?(node.value)
      puts "Erro, o elemento #{node.value} não pertence ao alfabeto de entrada"
      exit
    end
    node = node.next_node
  end
end

def catch_alfabeto
  alfabeto = gets.chomp
  if alfabeto.include?('#')
    puts "No alfabeto digitado não pode incluir o simbolo auxiliar '#'."
    exit
  end
  alfabeto
end
