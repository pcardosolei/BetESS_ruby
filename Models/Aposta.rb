require_relative'Apostador.rb'

class Aposta
	attr_accessor :valor, :opcao, :odd, :estado, :apostador

	def initialize(valor,opcao,odd,apostador,estado=true)
		@valor=valor
		@opcao=opcao
		@odd=odd
		@apostador=apostador
    @estado = estado
	end
end
