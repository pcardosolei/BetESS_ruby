require_relative "../Models/Evento"
require_relative "../Views/EventoView"


class EventosController

  def initialize
    @view = EventoView.new
  end

  def addEvento
    dados = @view.criarEvento
    evento = Evento.new(dados)
    return evento
  end

  def removEvento(id)
    @eventos.delete(id)
  end

  def oddEvento
    @eventos.equipas.each do |equipa, odd|
    puts equipa + "--" + odd
    end
  end

  def toString(evento)
    @view.toString(evento)
  end

  def showEventos(eventos)
    @view.showEventos(eventos)
  end

  def getEvent(eventos)
    @view.getEvent(eventos)
  end

end

