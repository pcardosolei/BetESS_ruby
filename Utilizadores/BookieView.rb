class BookieView	
	
	def initialize()
	end

	def criarBookieView()
		puts "Insira o nome do Bookie."
		nome =gets.chomp
		puts "Insira o email do Bookie."
		mail =gets.chomp
		apostador=[nome,mail]
	end

	def verBookie(nome,mail)
		"Bookie: #{nome}, mail: #{mail}"
	end
end
