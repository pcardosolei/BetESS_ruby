require_relative'Utilizador.rb'

class Apostador < Utilizador
	
	attr_accessor :disponivel

	def initialize(nome,mail,password,nickname,disponivel)
		super(nome,mail,password,nickname)
		@disponivel=disponivel
	end

	def verificaUtilizador(nome,password)
		super
	end
end
