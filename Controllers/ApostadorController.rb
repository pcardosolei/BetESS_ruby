#require_relative'Utilizador.rb'
#require_relative'Apostador.rb'
#require_relative'ApostadorView.rb'

class ApostadorController
	
	attr_accessor :apostadorView,:apostador

	def initialize()
		@apostadorView=ApostadorView.new
		@apostador=Apostador.new
	end

	def initialize(nome,mail,password,nickname,disponivel)
		@apostador.nome=nome
		@apostador.mail=mail
		@apostador.password=password
		@apostador.nickname=nickname
		@apostador.disponivel=disponivel
	end

	def criarApostador()
		lista=@apostadorView.criarApostadorView
		@apostador.nome=lista[0]
		@apostador.mail=lista[1]
		@apostador.disponivel=lista[2]
		
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