class ApostaController

	attr_accessor :apostaView,:aposta

	def initialize()
		@apostaView=ApostaView.new
		@aposta=Aposta.new
	end

	def initialize(valor,opcao,odd,apostador)
		@aposta.valor=valor
		@aposta.opcao=opcao
		@aposta.odd=odd
		@aposta.apostador=apostador
	end

	def criarAposta()
		lista=@apostaView.criarApostaView
		@aposta.valor=lista[0]
		@aposta.opcao=lista[1]
	end

	def actualizaApostador(vencedor)
		@aposta.estado=false
		if vencedor==@aposta.opcao
			@aposta.apostador.actualizaDisponivel(@aposta.odd * @aposta.valor)

		end
	end

end
