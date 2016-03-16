require_relative'./Controllers/MainController.rb'

class Facade

	def initialize()
		@main = MainController.new
		@flag=true
		@login=0
		@opcao=-1
    @nome = " "
	end

	def login
		@flag=true
		while @flag
		puts "Menu Login
      	1: Como Apostador
      	2: Como Bookie"
		case gets.strip
  		when "1"
  			puts "\e[H\e[2J"
  			puts "Username:"
  			user=gets.chomp
  			puts "password:"
  			password=gets.chomp
    		apostador=@main.verificaApostador(user,password)
    		if apostador
    			puts "LOGADO COMO APOSTADOR"
          nome = @main.encontraApostador(user)
    			@login=1
    			@flag=false
    		end
  		when "2"
  			puts "\e[H\e[2J"
  			puts "Username:"
  			user=gets.chomp
  			puts "password:"
  			password=gets.chomp
    		bookie=@main.verificaBookie(user,password)
    		if bookie
    			"LOGADO COMO BOOKIE"
          nome = @main.encontraBookie(user)
    			@login=2
    			@flag=false
    		end
		end
		end
	end



	def criaConta
		puts "Menu Criacao de Conta
      	1: Apostador
      	2: Bookie"
		case gets.strip
  		when "1"
  			puts "\e[H\e[2J"
    		@main.criarApostador
  		when "2"
  			puts "\e[H\e[2J"
    		@main.criarBookie
  		else
  			puts "\e[H\e[2J"
  			puts "Opcao Invalida"
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
        0: Sair"
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
		case opcao
  		when "1" #
    		puts "Criar Evento"
        @main.criarEvento
  		when "2" #
    		puts "Mostrar Eventos"
        @main.showEventos
  		when "3" #
    		puts "Editar Odds"
        @main.editarOdds
    	when "4" #
    		puts "Historico Odds de um Evento"
        @main.showHistorico
    	when "5"
    		puts "Mostrar Interesse em Evento"
    		break
    	when "6"
    		puts "Mostrar Lista de Apostas de Evento"
        @main.mostraListaApostas
    		break
    	when "7"
    		puts "Finalizar Evento"
    		break
    	else
    		break
		end
    self.dadosMenuBookie
    opcao = gets.strip
		end
		@login=-1
		@flag=true
	end

	def parteApostador
		self.dadosMenuApostador
		opcao = gets.strip
		while opcao!=0
		case opcao
  		when "1"
    		puts "Mostrar Eventos"
        @main.showEventos
  		when "2"
    		puts "Apostar em Eventos"
        @main.criarApostaEvento(@nome)
  		when "3"
    		puts "Ver Estado Apostas em Evento"
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
      else
        break
		end
    self.dadosMenuApostador
    cena = gets.strip
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
      	Opcao: "
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
      	Opcao: "
	end
end



vista = Facade.new
vista.main

