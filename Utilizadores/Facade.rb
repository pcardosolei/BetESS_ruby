require_relative'ApostadorController.rb'
require_relative'ApostaController.rb'
require_relative'BookieController.rb'

class Facade
	#attr_accessor:apostador

	def initialize()
		@apostador=ApostadorController.new
		@aposta=ApostaController.new
		@bookie=BookieController.new
		@listaApostadores=Hash.new("Lista de Apostadores")
		@listaBookies=Hash.new("Lista de Bokies")
	end

	def verificaApostador(nickname,password)
		apostador=""
		for key in @listaApostadores.keys()
			if key==nickname && @listaApostadores[nickname].password==password
				apostador=@listaApostadores[nickname]
			end
		end
		apostador
	end

	def verificaBookie(nickname,password)
		bookie=""
		for key in @listaBookies.keys()
			if key==nickname && @listaBookies[nickname].password==password
				bookie=@listaBookies[nickname]
			end
		end
		bookie
	end

	def criarBookieMain
		bookie=@bookie.criarBookie
		tam=@listaBookies.length
		@listaBookies[bookie.nickname]=bookie
	end


	def criarApostadorMain
		apostador=@apostador.criarApostador
		puts "Lista de apostas: #{apostador.listaApostas}"
		tam=@listaApostadores.length
		@listaApostadores[apostador.nickname]=apostador
	end

	def encontraBookie(key)
		@listaBookies[key]
	end

	def encontraApostador(key)
		@listaApostadores[key]
	end

	def criarApostaMain(apostador)
		aposta=@aposta.criarAposta(apostador)
		tam=@listaApostas.length
		@listaApostas[tam]=aposta
	end

	def imprimeApostadores
		for key in @listaApostadores.keys()
   		 puts "Nick #{key} => Apostador =>> Nome: #{@listaApostadores[key].nome}"
		end
	end

	def imprimeBookies
		for key in @listaBookies.keys()
   		 puts "Nick #{key} => Bookie =>> Nome: #{@listaBookies[key].nome}"
		end
	end

	def imprimeApostas
		for key in @listaApostas.keys()
   		 puts "Nick #{key} => Apostador =>> Nome: #{@listaApostadores[key].nome}"
		end
	end

	

end



vista = Facade.new
#vista.criarApostadorMain
#apostador=vista.encontraApostador(0)
#aposta=vista.criarApostaMain(apostador)
#puts "Aposta => Nome do Apostador: #{aposta.apostador.nome}, Valor apostado: #{aposta.valor}"
#vista.criarBookieMain
#vista.criarApostadorMain
#vista.criarApostadorMain
#vista.imprimeApostadores
#vista.imprimeBookies
#verificao1=vista.verificaApostador("Lbr1","123")
#verificao2=vista.verificaApostador("Lbr2","123")
#puts "verificacao1 #{verificao1}"
#puts "verificacao2 #{verificao2}"