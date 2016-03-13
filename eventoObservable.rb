require_relative'Historico.rb'
require "observer"

class Evento
	include Observable

	def initialize()
		#........
		@observers = []
	end

	def subscribe observer
		@observers << observer
	end

	def actualizaHistorico()
		 historicoAtual = Historico.new(@odd)
		 @historico.add(historicoAtual)
		 notify_observers()
	end
end

class Observer
	def update(valor)
end

class Bookie < Observer
	def update(valor)
		puts "Sei lá"
	end
end
