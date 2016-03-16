require_relative'Bookie.rb'
require_relative'BookieView.rb'

class BookieController

	attr_accessor :bookieView,:bookie

	def initialize()
		@bookieView=BookieView.new
	end

	def criarBookie
		lista=@bookieView.criarBookieView
		@bookie=Bookie.new(lista[0],lista[1],lista[2],lista[3])
	end

	def verificaUtilizador(nome,password)
		@apostador.verificaUtilizador(nome,password)
	end
end
