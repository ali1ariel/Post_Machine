# frozen_string_literal: true

require_relative 'aux_functions'
require_relative 'fila'
require_relative 'post_machine'

# Por padrao o simbolo auxiliar eh # e o simbolo de vazio eh E
programa = decode
entrada = catch_entrada(gets.chomp)
post_machine(programa, entrada)
