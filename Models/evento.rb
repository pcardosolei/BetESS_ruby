require_relative './Historico'

class Evento
 attr_accessor :vencedor, :state, :historico
 attr_reader :equipas

  # => recebe uma hash
  def initialize(equipas)
    @equipas = equipas
    @vencedor = " "
    @state = false
    @apostas = Hash.new {"No bettings"}
    @bookie = " "
    @historico = Historico.new(equipas)
  end

  def newOdds(equipas)
    equipas.each do |equipa, odd|
      @equipas[equipa] = odd
      end
      @historico.ultimaOdd(equipas)
  end
end






