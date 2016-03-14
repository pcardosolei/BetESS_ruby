require_relative'Utilizador.rb'

class Bookie < Utilizador

	def initialize(nome,mail,password,nickname)
		super(nome,mail,password,nickname)
	end

	def verificaUtilizador(nome,password)
		super
	end
end

