require_relative "./evento.rb"

class EventoController

  def initialize
    @eventos = Hash.new{"Eventos não existentes"}
  end

  def getEvento(evento)
    @eventos[evento]
  end

  def showEventos
    @eventos.each do |id, evento|
      puts "Evento #{id}"
      puts evento.toString
    end
  end

  def addEvento(evento)
    @eventos[@eventos.length] = evento
  end

  def removEvento(id)
    @eventos.delete(id)
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

