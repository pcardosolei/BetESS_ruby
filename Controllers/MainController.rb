require_relative './EventosController'
require_relative './ApostadorController'
require_relative './ApostaController'
require_relative './BookieController'

class MainController

  def initialize
    @eventoControl = EventosController.new
    @eventos = Hash.new{"Sem Eventos"}
    @listaApostadores=Hash.new("Lista de Apostadores")
    @listaBookies=Hash.new("Lista de Bookies")
    @apostadorController = ApostadorController.new
    @apostaControl = ApostaController.new
    @bookieControl = BookieController.new
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
  def criarApostaEvento(apostador)
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.criarAposta(@listaApostadores[apostador],evento)
  end

  def mostraListaApostas
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.mostraApostas(evento)
  end

  #Bookie
  def criarBookie
    bookie=@bookieControl.criarBookie
    @listaBookies[bookie.nickname]=bookie
  end

  def encontraBookie(key)
    @listaBookies[key].nickname
  end

  def verificaBookie(nickname,password)
    flag = false
    for key in @listaBookies.keys()
      if key==nickname && @listaBookies[nickname].password==password
        flag = true
      end
    end
    flag
  end

  #Apostador
  def criarApostador
    apostador=@apostadorController.criarApostador
    @listaApostadores[apostador.nickname]=apostador
  end

  def encontraApostador(key)
    @listaApostadores[key].nickname
  end

  def listaApostadores
    @apostadorController.listaApostadores
  end

  def verEstadoApostas(apostador)
    evento = @eventoControl.getEvent(@eventos)
    @apostaControl.verEstadoApostas(evento,apostador)
  end

  def verificaApostador(nickname,password)
    flag=false
    for key in @listaApostadores.keys()
      if key==nickname && @listaApostadores[nickname].password==password
        flag = true
      end
    end
    flag
  end

end





