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
		@listaBookies=Hash.new("Lista de Bookies")
		@flag=true
		@login=0
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
      	2: Como Bookie"
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
      	2: Bookie"
		case gets.strip
  		when "1";begin
  			puts "\e[H\e[2J"
    		self.criarApostadorMain
    	end
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
=begin
	def mainMenu2
    	puts "What would you like to do?
     	1: Login
      	2: Criar Conta de Utilizador
      	3: Criar uma Aposta
      	4: Realizar uma Aposta
      	5: Fechar Evento
      	6: Mostrar interesse num Evento
      	7: Sair"
		case gets.strip
  		when "1"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "2"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "3"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "4"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "5"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "6"
    		puts "Temos de trabalhar e deixar o LoL"
  		when "7"
    		puts "Temos de trabalhar e deixar o LoL"
		end
	end
=end
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
vista.mainMenu
vista.imprimeApostadores
vista.mainMenu
