require_relative './EventosController'
require_relative './ApostadorController'

class MainController

  def initialize
    @eventoControl = EventosController.new
    @eventos = Hash.new{"Sem Eventos"}
    @apostadorController = ApostadorController.new
  end

  #EVENTOS
  def criarEvento
    evento = @eventoControl.addEvento
    @eventos[@eventos.length] = evento
  end

  def showEventos
    @eventoControl.showEventos(@eventos)
  end

  def toStringEvent
    evento = @eventoControl.getEvent(@eventos)
    @eventoControl.toString(evento)
  end
end


luis = MainController.new
luis.criarEvento
luis.toStringEvent

