require_relative'../Models/Bookie.rb'

class BookieView	
	
	def initialize()
	end

	def criarBookieView()
		puts "Insira o nome do Bookie."
		nome =gets.chomp
		puts "Insira o email do Bookie."
		mail =gets.chomp
		puts "Insira o password do Bookie."
		password =gets.chomp
		puts "Insira o nick do Bookie."
		nick =gets.chomp
		bookie=[nome,mail,password,nick]
	end

	def verBookie(nome,mail)
		"Bookie: #{nome}, mail: #{mail}"
	end
end
