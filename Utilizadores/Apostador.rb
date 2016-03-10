require_relative'Utilizador.rb'

class Apostador < Utilizador
	
	attr_accessor :disponivel

	def initialize(nome,mail,password,nickname,disponivel)
		super(nome,mail,password,nickname)
		@disponivel=disponivel
	end

	def levantamento(valor)
		if testaDisponivel(valor) 
			then @disponivel -= valor
		else
			puts "Saldo insuficiente"
		end
	end

	def deposito(valor)
		@disponivel +=valor
	end

	def testaDisponivel(valor)
		if valor > @disponivel then false
		else true
		end
	end

	def verificaUtilizador(nome,password)
		super
	end

	def mostra
		puts "O Nome: #{nome}"
		puts "O Email: #{mail}"
		puts "Disponivel: #{disponivel}"
	end
end


apostador = Apostador.new("Luisinho","lbrbrito@gmail.com","2356","Lb",999)
apostador2 = Apostador.new("Luis","lbrbrito@gmail.com","123456","Lbr1",100)
apostador.mostra
apostador.deposito(100)
apostador.mostra
apostador.levantamento(200)
apostador.mostra
apostador.levantamento(2000)
apostador.mostra
existe=apostador.verificaUtilizador("Luisinho","2356")
puts existe
#apostador.verificaApostador("Luisinho","2356")
#apostador2.verificaApostador("Luis","123456")
#apostador2.verificaApostador("Luisi","123456")
