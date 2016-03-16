#require_relative'Utilizador.rb'
require_relative '../Models/Apostador'
require_relative'../Views/ApostadorView'

class ApostadorController

	attr_accessor :apostadorView,:apostador

	def initialize
		@apostadorView=ApostadorView.new
		@apostador=Hash.new{"Sem Apostadores"}
	end

	def criarApostador
		lista=@apostadorView.criarApostadorView
		@apostador[lista[2]] = Apostador.new(*lista)
	end

	def mostraApostadores
		@apostador.each do |nick, apostador|
      puts nick
      print apostadorView.verApostador(apostador)
      end
	end


	def levantamento(valor)
		if testaDisponivel(valor)
			@apostador.disponivel -= valor
		else
			puts "Saldo insuficiente"
		end
	end

	def actualizaDisponivel(valor)
		@apostador.disponivel +=valor
	end

	def testaDisponivel(valor)
		if valor > @apostador.disponivel then false
		else true
		end
	end

	def verificaUtilizador(nome,password)
		@apostador.verificaUtilizador(nome,password)
	end


end
