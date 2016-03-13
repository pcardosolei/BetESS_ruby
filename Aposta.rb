require_relative'Apostador.rb'

class Aposta < Apostador
	attr_accessor :valor, :opcao, :odd, :estado, :apostador

	def initialize(valor,opcao,odd,apostador,estado=true)
		@valor=valor
		@opcao=opcao
		@odd=odd
		@apostador=apostador
	end

	def actualizaApostador(vencedor)
		@estado=false
		if vencedor==@opcao
			@apostador.actualizaDisponivel(@odd * @valor)
			
		end
	end

	

	def to_String()
		 "Opcao: #{@opcao}  #{@valor}."
	end

	
	
end


apostador = Apostador.new("Luisinho","lbrbrito@gmail.com","2356","Lb",999)
nAposta = Aposta.new(15,'x',1,apostador)
puts nAposta.to_String


