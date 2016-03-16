#require_relative'Apostador.rb'

class ApostadorView

	def initialize()
	end

	def criarApostadorView()
		puts "Insira o nome do Apostador."
		nome =gets.chomp
		puts "Insira o email do Apostador."
		mail =gets.chomp
		puts "Password"
		pass = gets.chomp
		puts "Nickname"
		nickname = gets.chomp
		puts "Insira o valor."
		montante =gets.chomp
		apostador=[nome,mail,pass,nickname,montante]
	end

	def verApostador(apostador)
		"Apostador: #{apostador.nome}, mail: #{apostador.mail} e saldo: #{apostador.disponivel}"
	end
end
