require_relative '../Models/Apostador'
require_relative '../Views/ApostadorView'

class ApostadorController

	attr_accessor :apostadorView

	def initialize
		@apostadorView=ApostadorView.new
	end

	def criarApostador
		lista=@apostadorView.criarApostadorView
		@apostador=Apostador.new(lista[0],lista[1],lista[2],lista[3],lista[4])
	end

	def adicionaAposta(aposta)
		tam=@apostador.listaApostas.length
		@apostador.listaApostadores[tam]=aposta
	end

	def testaDisponivel(valor,apostador)
		if valor > apostador.disponivel then false
		else true
		end
	end

	def consultarSaldo(apostador)
		@ApostadorView.consultaSaldo(apostador)
	end

  def levantamento(apostador)
    valor = @ApostadorView.levantamento
    if testaDisponivel(valor,apostador)
			@apostador.disponivel -= valor
		else
			@apostadorView.saldoInsuficiente
		end
  end

  def deposito(apostador)
  	valor = @ApostadorView.levantamento
  	apostador.disponivel +=valor
  end

	def verificaUtilizador(nome,password)
		@apostador.verificaUtilizador(nome,password)
	end

	def listaApostadores(apostadores)
		@ApostadorView.listaApostadores(apostadores)
	end
end
