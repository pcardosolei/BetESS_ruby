require_relative'Aposta.rb'
require_relative'ApostaView.rb'

class ApostaController

	attr_accessor :apostaView,:aposta

	def initialize()
		@apostaView=ApostaView.new
	end

# Precisamos do evento para completar -> odd e temos de passar o evento
	def criarAposta(apostador)
		lista=@apostaView.criarApostaView
		@aposta=Aposta.new(lista[0],lista[1],1,apostador)
	end

	def actualizaApostador(vencedor)
		@aposta.estado=false
		if vencedor==@aposta.opcao
			@aposta.apostador.actualizaDisponivel(@aposta.odd * @aposta.valor)

		end
	end

end
