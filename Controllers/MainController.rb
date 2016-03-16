require_relative './EventosController'
require_relative './ApostadorController'
require_relative './ApostaController'

class MainController

  def initialize
    @eventoControl = EventosController.new
    @eventos = Hash.new{"Sem Eventos"}
    @listaApostadores=Hash.new("Lista de Apostadores")
    @listaBookies=Hash.new("Lista de Bookies")
    @apostadorController = ApostadorController.new
    @apostaControl = ApostaController.new
  end

  #EVENTOS
  def criarEvento
    evento = @eventoControl.addEvento
    @eventos[@eventos.length] = evento
  end

  def addEvento(evento)
    @eventos[@eventos.length] = evento
  end

  def editarOdds
    evento = @eventoControl.getEvent(@eventos)
    @eventoControl.novasOdds(evento)
  end

  def showEventos
    @eventoControl.showEventos(@eventos)
  end

  def toStringEvent
    evento = @eventoControl.getEvent(@eventos)
    @eventoControl.toString(evento)
  end

  def showHistorico
    evento = @eventoControl.getEvent(@eventos)
    @eventoControl.showHistorico(evento)
  end

  #Aposta
  def criarApostaEvento
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.criarAposta(@listaApostadores['luis'],evento)
  end

  def mostraListaApostas
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.mostraApostas(evento)
  end

  #Bookie
  def criarBookieMain
    bookie=@bookie.criarBookie
    tam=@listaBookies.length
    @listaBookies[bookie.nickname]=bookie
  end

  def encontraBookie(key)
    @listaBookies[key]
  end

  #Apostador
  def criarApostador
    apostador=@apostadorController.criarApostador
    @listaApostadores[apostador.nickname]=apostador
  end

  def encontraApostador(key)
    @listaApostadores[key]
  end

  def listaApostadores
    @apostadorController.listaApostadores
  end

  def verEstadoApostas
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.verEstadoApostas(evento,"luis")
  end

end


ev1 = {"porto"=> "1,5", "empate"=> "2", "braga"=> "3"}
evento1 = Evento.new(ev1)
ev2 = {"braga"=> "2", "empate" => "1,5", "guimaraes" => "2"}
evento2 = Evento.new(ev2)
ap1 = Apostador.new("luis","luis@gmail.com","123","luis","0")
ap2 = Apostador.new("paulo","paulo@gmail.com","1234","paulo","0")


luis = MainController.new
luis.addEvento(evento1)
luis.addEvento(evento2)
#luis.showEventos
#luis.editarOdds
#luis.showHistorico
#luis.showEventos
luis.criarApostaEvento
luis.verEstadoApostas



#luis.criarApostador
#luis.criarEvento
#luis.criarApostaEvento

