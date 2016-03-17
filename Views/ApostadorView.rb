
class ApostadorView

	def initialize
	end

	def criarApostadorView
		puts "Insira o nome do Apostador."
		nome =gets.chomp
		puts "Insira o email do Apostador."
		mail =gets.chomp
		puts "Insira o password do Apostador."
		password =gets.chomp
		puts "Insira o nick do Apostador."
		nick =gets.chomp
		puts "Insira o valor."
		montante =gets.chomp
		apostador=[nome,mail,password,nick,montante]
	end

	def verApostador(apostador)
		"Apostador: #{apostador.nome}, mail: #{apostador.mail}, password #{apostador.password}, nick #{apostador.nick} e saldo: #{apostador.disponivel}"
	end

	def consultaSaldo(apostador)
		puts "Saldo Disponivel = #{apostador.disponivel}"
	end

	def levantamento
		puts "Valor?"
    valor = gets.strip.to_i
	end

	def saldoInsuficiente
		puts "Saldo insuficiente"
	end
	def listaApostadores(apostadores)
		apostadores.each do |nick, apostador|
			apostador.verApostador
		end
	end

end
