# frozen_string_literal: true

def decode
  arq = File.new('entrada1.txt', 'r')
  arr = arq.readlines
  arr
end

def catch_entrada(entrada_string)
  entrada = LinkedList::Filo.new

  cont = 0
  while cont < entrada_string.size
    entrada << entrada_string[cont]
    cont += 1
  end
  entrada
end
