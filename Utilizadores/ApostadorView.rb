#require_relative'Apostador.rb'

class ApostadorView	
	
	def initialize()
	end

	def criarApostadorView()
		puts "Insira o nome do Apostador."
		nome =gets.chomp
		puts "Insira o email do Apostador."
		mail =gets.chomp
		puts "Insira o valor."
		montante =gets.chomp
		apostador=[nome,mail,montante]
	end

	def verApostador(nome,mail,disponivel)
		"Apostador: #{nome}, mail: #{mail} e saldo: #{disponivel}"
	end
end


teste=ApostadorView.new

cenas=teste.verApostador("coisa","cenas",16)
puts cenas