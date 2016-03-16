require_relative'../Models/Bookie.rb'
require_relative'../Views/BookieView.rb'



class BookieController
	#include Observer fazer uma classe observer vazia para enganar o ..?

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

	def update(obj,tipo)
		case tipo
		when "fechado"
			total=0
			obj.apostas.each do |x|
				total +=x
			end
			puts "Total #{total}"
		end

	end
end

