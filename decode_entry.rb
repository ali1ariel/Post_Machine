# frozen_string_literal: true

require 'json'

def decode
  arq = File.new('entrada1.txt', 'r')
  arr = arq.readlines
  arr
end
