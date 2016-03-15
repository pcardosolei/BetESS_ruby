require_relative'Aposta.rb'
class ApostaView	
	
	def initialize()
	end

	def criarApostaView()
		puts "Insira o valor da aposta."
		valor =gets.chomp
		puts "Insira a sua opcao."
		opcao =gets.chomp
		aposta=[valor,opcao]
	end

	def verAposta(valor,opcao)
		"Aposta: #{valor} e opcao #{opcao}"
	end
end