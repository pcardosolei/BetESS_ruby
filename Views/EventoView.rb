class EventoView

  def initialize
  end

  def criarEvento
    puts "Insira equipa - equipa"
    jogo = gets.chomp
    equipa = jogo.split(" - ")
    puts "Insira odds - casa , empate , fora"
    oddsJogo = gets.chomp
    odds = oddsJogo.split(" , ")
    evento = Hash.new("")
    evento[equipa[0]] = odds[0]
    evento["empate"] = odds[1]
    evento[equipa[1]] = odds[2]
    return evento
  end

  def showEventos(eventos)
    eventos.each do |id, evento|
      puts "Evento #{id}"
      print toString(evento)
    end
    puts
  end

  def toString(evento)
    evento.equipas.each do |equipa, odd|
      puts "#{equipa} --> #{odd}"
        end
  end

  def stringJogo(evento)
    keyEvento = evento.equipas.keys
    print " - #{keyEvento[0]} -- #{keyEvento[2]}"
  end

  def getEvent(eventos)
    eventos.each do |id,evento|
      print "Evento #{id} "
      print stringJogo(evento)
      puts
    end
    puts "Qual é o evento que deseja informações?"
    escolha = Integer(gets.chomp)
    eventos[escolha]
  end

end




