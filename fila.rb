# frozen_string_literal: true

module LinkedList
  # Classe Auxiliar da FILA
  class Node
    attr_accessor :value, :next_node, :previous_node

    def initialize(value, next_node, previous_node)
      @value = value
      @next_node = next_node
      @previous_node = previous_node
    end
  end
  # Classe Fila
  # Lista duplamente encadeada, com funções de adicionar no final e remover do começo
  class Filo
    attr_reader :first

    def initialize
      @first = nil
      @last = nil
    end

    def push(value)
      # Inicia a fila
      if @first.nil? && @last.nil?
        @first = Node.new(value, nil, nil)
        @last = @first
      # A fila só tem um elemento
      elsif @first == @last
        @last = Node.new(value, nil, nil)
        @first = Node.new(@first.value, @last, nil)

        @last.previous_node = @first
      
      else
        aux = Node.new(value, nil, @last)
        @last = Node.new(@last.value, aux, @last.previous_node)
        aux.previous_node = @last
        @last.previous_node.next_node = @last if @last.class != NilClass
        @last = aux

      end
    end
    alias << push

    def pop
      raise 'Filo is empty' if empty?

      @last = nil if @first == @last

      value = @first.value
      @first = @first.next_node
      @first.previous_node = nil if @first.class != NilClass
      value
    end

    def puts_all
      node = @first
      cont = 0
      while node.nil? == false
        puts "#{cont} => #{node.value}"
        node = node.next_node
        cont += 1
      end
    end

    def empty?
      @first.nil?
    end

    def to_s
      node = @first
      string_to_return = ''
      while node.nil? == false
        string_to_return = "#{string_to_return}#{node.value}"
        node = node.next_node
      end
      string_to_return
    end
  end
end
