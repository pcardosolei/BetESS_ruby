require_relative "../Models/Evento"
require_relative "../Views/EventoView"
require_relative "HistoricoController"


class EventosController


  def initialize
    @view = EventoView.new
    @historicoControl = HistoricoController.new
  end

  def addEvento
    dados = @view.criarEvento
    evento = Evento.new(dados)
    return evento
  end

  def removEvento(id)
    @eventos.delete(id)
  end

  def novasOdds(evento)
    @view.novasOdds(evento)
    @historicoControl.ultimaOdd(evento.equipas,evento.historico)
  end

  def abreEvento(evento)
    evento.open
  end

  def toString(evento)
    @view.toString(evento)
  end

  def showHistorico(evento)
    @historicoControl.toString(evento)
  end

  def fechaEvento(evento)
    evento.close
  end

  def showEventos(eventos)
    @view.showEventos(eventos)
  end

  def getEvent(eventos)
    @view.getEvent(eventos)
  end

  def addObserver(bookie,evento)
    evento.adicionar_observer(bookie)
  end
end

