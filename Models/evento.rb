require_relative './Historico'
require_relative'../Observer/Subject'

class Evento
  include Subject
 attr_accessor :vencedor, :state, :historico, :apostas
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


  def open
    @state=true
  end
  
  def close
    @state = false
    notify_Observers("fechado")
  end
end






