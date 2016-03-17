require_relative "../Controllers/HistoricoController.rb"
require_relative "../Views/HistoricoView"



class HistoricoController

  def initialize
    @view = HistoricoView.new
  end

  def ultimaOdd(novas,historico)
    historico.setOdds(novas)
  end

  def toString(evento)
      @view.toString(evento)
  end
end





