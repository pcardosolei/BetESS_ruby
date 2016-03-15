require_relative'Apostador.rb'

class ApostadorView	
	
	def initialize()
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

	def verApostador(nome,mail,password,nick,disponivel)
		"Apostador: #{nome}, mail: #{mail}, password #{password}, nick #{nick} e saldo: #{disponivel}"
	end
end
