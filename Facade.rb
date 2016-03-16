require_relative'./Controllers/ApostadorController.rb'
require_relative'./Controllers/ApostaController.rb'
require_relative'./Controllers/BookieController.rb'
require 'colorize'

class Facade
	#attr_accessor:apostador

	def initialize()
		@apostador=ApostadorController.new
		@aposta=ApostaController.new
		@bookie=BookieController.new
		@listaApostadores=Hash.new("Lista de Apostadores")
		@listaBookies=Hash.new("Lista de Bokies")
		@flag=true
		@login=0
		@opcao=-1
	end

	def verificaApostador(nickname,password)
		flag=false
		for key in @listaApostadores.keys()
			if key==nickname && @listaApostadores[nickname].password==password
				#apostador=@listaApostadores[nickname]
				flag=true
			end
		end
		flag
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

	def login
		@flag=true
		while @flag
		puts "Menu Login
      	1: Como Apostador
      	2: Como Bookie".light_blue
		case gets.strip
  		when "1"
  			puts "\e[H\e[2J"
  			puts "Username:"
  			user=gets.chomp
  			puts "password:"
  			password=gets.chomp
    		apostador=self.verificaApostador(user,password)
    		if apostador
    			puts "LOGADO COMO APOSTADOR"
    			@login=1
    			@flag=false
    		end
  		when "2"
  			puts "\e[H\e[2J"
  			puts "Username:"
  			bookie=gets.chomp
  			puts "password:"
  			password=gets.chomp
    		bookie=self.verificaBookie(user,password)
    		if bookie
    			"LOGADO COMO BOOKIE"
    			@login=2
    			@flag=false
    		end
		end
		end
	end

	def criaConta
		#@flag=true
		#while @flag
		puts "Menu Criacao de Conta
      	1: Apostador
      	2: Bookie".light_blue
		case gets.strip
  		when "1"
  			puts "\e[H\e[2J"
    		self.criarApostadorMain
  		when "2"
  			puts "\e[H\e[2J"
    		self.criarBookieMain
  		else
  			puts "\e[H\e[2J"
  			puts "Opcao Invalida"
		end
		#end
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

	def consultarSaldoMain(apostador)
		@listaApostadores[apostador.nickname].consultaDisponivel
	end


	def consultarSaldo
		self.consultarSaldoMain(apostador)
	end

	def levantamentoMain(valor,apostador)
		@listaApostadores[apostador.nickname].levantamento(valor)
	end


	def levantamento
		puts "Valor a levantar?"
		valor = gets.strip
		self.levantarMain(valor,apostador)
	end

	def depositarMain(valor,apostador)
		@listaApostadores[apostador.nickname].actualizaDisponivel(valor)
	end


	def depositar
		puts "Valor a depositar?"
		valor = gets.strip
		self.depositarMain(valor,apostador)
	end

	def mainMenu
		while @flag
    	puts "Bem Vindo ao menu Inicial
     	1: Registar
      	2: Login
      	0: Sair".yellow
		case gets.strip
  		when "1"
    		puts "Criar Conta"
    		self.criaConta
  		when "2"
    		puts "Login"
    		self.login
  		else
  			puts "Sai do programa"
  			@flag=false
  			puts "\e[H\e[2J"
		end
		end
	end

	def parteBookie
		self.dadosMenuBookie
		opcao = gets.strip
		while opcao!=0
		case gets.strip
  		when "1"
    		puts "Criar Evento"
    		break
  		when "2"
    		puts "Mostrar Eventos"
    		break
  		when "3"
    		puts "Editar Odds"
    		break
    	when "4"
    		puts "Historico Odds de um Evento"
    		break
    	when "5"
    		puts "Mostrar Interesse em Evento"
    		break
    	when "6"
    		puts "Mostrar Lista de Apostas de Evento"
    		break
    	when "7"
    		puts "Finalizar Evento"
    		break
    	else
    		break
		end
		end
		@login=-1
		@flag=true
	end

	def parteApostador
		self.dadosMenuApostador
		opcao = gets.strip
		while opcao!=0
		case gets.strip
  		when "1"
    		puts "Mostrar Eventos"
    		break
  		when "2"
    		puts "Apostar em Eventos"
    		break
  		when "3"
    		puts "Ver Estado Apostas em Evento"
    		break
    	when "4"
    		puts "Deposito"
    		#self.depositar
    		break
    	when "5"
    		puts "Levantamento"
    		#self.levantamento
    		break
    	when "6"
    		puts "Consultar Evento"
    		#self.Consultar
    		break
		end
		end
		@login=-1
		@flag=true
	end

	def main
		while @opcao!=2
		puts "Bem Vindo ao menu Inicial
     	1: Entrar na aplicacao
      	2: Sair da aplicacao"
      	@opcao=gets.strip
		case @opcao
  		when "1"
    		self.mainMenu
    		if @login==1
    			self.parteApostador
    		elsif @login==2
    			self.parteBookie
    		end
    	when "2"
    		break
		end
		end
	end


	def dadosMenuBookie
    	puts "BET ESS
     	1: Criar Evento
      	2: Mostrar Eventos
      	3: Editar Odds
      	4: Historico Odds de um Evento
      	5: Mostrar Interesse em Evento
      	6: Mostrar Lista de Apostas de Evento
      	7: Finalizar Evento
      	0: Menu Inicial
      	Opcao".red
	end

	def dadosMenuApostador
    	puts "BET ESS
     	1: Mostrar Eventos
      	2: Apostar em Evento
      	3: Ver Estado Apostas em Evento
      	4: Deposito
      	5: Levantamento
      	6: Consultar Saldo
      	0: Menu Inicial
      	Opcao".blue
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
#vista.imprimeBookies
#verificao1=vista.verificaApostador("Lbr1","123")
#verificao2=vista.verificaApostador("Lbr2","123")
#puts "verificacao1 #{verificao1}"
#puts "verificacao2 #{verificao2}"
vista.main
#vista.imprimeApostadores
#vista.mainMenu
#vista.main
#vista.dadosMenuApostador
