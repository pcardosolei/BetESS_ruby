require_relative'Utilizador.rb'

class Apostador < Utilizador
	

	def initialize(nome,mail,password,nickname)
		super(nome,mail,password,nickname)
	end

	def verificaUtilizador(nome,password)
		super
	end

	def mostra
		puts "O Nome: #{nome}"
		puts "O Email: #{mail}"

	end
end
