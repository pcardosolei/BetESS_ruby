require_relative '../Models/Apostador'
require_relative '../Views/ApostadorView'

class ApostadorController

	attr_accessor :apostadorView,:apostador

	def initialize
		@apostadorView=ApostadorView.new
		@apostador=Hash.new{"Sem Apostadores"}
	end

	def criarApostador
		lista=@apostadorView.criarApostadorView
		@apostador=Apostador.new(lista[0],lista[1],lista[2],lista[3],lista[4])
	end

	def levantamento(valor)
		if testaDisponivel(valor)
			@apostador.disponivel -= valor
		else
			puts "Saldo insuficiente"
		end
	end

	def adicionaAposta(aposta)
		tam=@apostador.listaApostas.length
		@apostador.listaApostadores[tam]=aposta
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

	def listaApostadores(apostadores)
		@ApostadorView.listaApostadores(apostadores)
	end
end
