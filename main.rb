# frozen_string_literal: true

require_relative 'decode_entry'
require_relative 'fila'
require_relative 'post_machine_helpers'
require_relative 'post_machine'

# Por padrao o simbolo auxiliar eh # e o simbolo de vazio eh E
programa = decode
# alfabeto = get_alfabeto
entrada = catch_entrada(gets.chomp)
# faz_parte_do_alfabeto(entrada, alfabeto)
post_machine(programa, entrada)
