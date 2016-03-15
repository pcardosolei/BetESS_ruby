require_relative "./evento.rb"

class EventoController

  def initialize
    @eventos = Hash.new{"Eventos não existentes"}
  end

  def getEvento(evento)
    @eventos[evento]
  end

  def oddEvento
      @eventos.equipas.each do |equipa, odd|
      puts equipa + "--" + odd
      end
  end

  def oddEscolha(escolha)
      return equipas[escolha]
  end

  def showEventos
    @eventos.each do |id, evento|
      puts "Evento #{id}"
      puts evento.toString
    end
  end

  def addEvento(evento)
    @eventos[@eventos.length] = e
  end

  def removEvento(id)
    @eventos.delete(id)
  end

 def showEquipas
      return @equipas.keys
  end

  def mostraHistorico
    @historico.toString
  end

  def toString
    @equipas.each do |equipa, odd|
      puts "#{equipa} -->  #{odd}"
    end
  end

  def mostraApostas
    @apostas.each do |x|
      puts "#{x}"
    end
  end

  def addAposta
  end
end


person =   {"porto"=>"1.2", "empate"=>"3", "braga"=>"3.5"}
person1 =   {"porto"=>"1.5", "empate"=>"2.5", "braga"=>"4"}

evento1 = Evento.new(person)
evento2 = Evento.new(person1)
eventoController = EventoController.new
eventoController.addEvento(evento1)
eventoController.addEvento(evento2)
eventoController.showEventos

