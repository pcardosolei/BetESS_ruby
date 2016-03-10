cass Aposta
	attr_accessor :valor, :opcao, :odd, :estado

	def initialize(valor,opcao,odd)
		@valor=valor
		@opcao=opcao
		@odd=odd
	end
	# get and set valor
	def getValor()
		return @valor
	end

	def setValor(valor)
		@valor=valor
	end
	# get and set opcao
	def getOpcao()
		return @opcao
	end

	def setOpcao(opcao)
		@opcao=opcao
	end
	#get and set estado
	def isEstado()
		return @estado
	end

	def setEstado(estado)
		@estado=estado
	end

	#To_string

	def to_String()
		return "Valor: #{valor}"
	end

	def ver()
		puts "Valor #{valor}"
		puts "Opcao #{opcao}"
		puts "Odd #{odd}"	
	end

	# get and set odd
	def getOdd()
		return @odd
	end

	def setOdd(valor)
		@odd=valor
	end

	
end



nAposta = Aposta.new(15,'x',1)
nAposta.ver
nAposta.setValor(69)
nValor=nAposta.to_String
puts "Novo valor #{nValor}"
