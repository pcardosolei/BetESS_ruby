require_relative "./historicoController"

class Evento
 attr_accessor :equipas, :vencedor, :state

  # => recebe uma hash
  def initialize(equipas)
    @equipas = equipas
    @vencedor = vencedor
    @state = state
    @historico = HistoricoController.new(equipas)
  end

  def newOdds(equipas)
    equipas.each do |equipa, odd|
      @equipas[equipa] = odd
      end
      @historico.ultimaOdd(equipas)
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

  #meter bookie, listaApostas
  #observers
  #




