require_relative'../Models/Aposta.rb'
require_relative'../Views/ApostaView.rb'

class ApostaController

	attr_accessor :apostaView,:aposta

	def initialize
		@apostaView=ApostaView.new
	end

# Precisamos do evento para completar -> odd e temos de passar o evento
	def criarAposta(apostador,evento)
		lista=@apostaView.criarApostaView(evento)
		aposta=Aposta.new(lista[0],lista[1],lista[2],apostador)
		evento.apostas[evento.apostas.length] = aposta
	end

	def actualizaApostador(vencedor)
		@aposta.estado=false
		if vencedor==@aposta.opcao
			@aposta.apostador.actualizaDisponivel(@aposta.odd * @aposta.valor)
		end
	end

  def mostraApostas(evento)
    @view.mostraApostas(evento)
  end

end
