
class ApostaView

	def initialize
	end

	def criarApostaView(evento)
		puts toString(evento)
		puts "Insira a sua opcao."
		opcao =gets.chomp
	  puts "Insira o valor da aposta."
		valor =gets.chomp
		odd = evento.equipas[opcao]
		aposta=[valor,opcao,odd]
	end

	def verAposta(valor,opcao)
		"Aposta: #{valor} e opcao #{opcao}"
	end

	def toString(evento)
		evento.equipas.each do |equipa, odd|
      puts "#{equipa} --> #{odd}"
        end
	end

	  def mostraApostas(evento)
    evento.apostas.each do |id, aposta|
      puts "#{aposta.escolha} - #{aposta.valor}"
    	end
  	end


end
