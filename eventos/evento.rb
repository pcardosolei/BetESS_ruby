require_relative "./historico"

class Evento
 attr_accessor :vencedor, :state

  # => recebe uma hash
  def initialize(equipas)
    @equipas = equipas
    @historico = Historico.new(equipas)
  end

  def oddEvento
      @equipas.each do |equipa, odd|
      puts equipa + "--" + odd
      end
  end

  def oddEscolha(escolha)
      return equipas[escolha]
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




