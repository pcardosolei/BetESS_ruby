require_relative'Utilizador.rb'

class Apostador < Utilizador

	
	attr_accessor :disponivel,:listaApostas

	def initialize(nome,mail,password,nickname,disponivel)
		super(nome,mail,password,nickname)
		@disponivel=disponivel
		@listaApostas=Hash.new("Lista de Apostas")
	end
end
