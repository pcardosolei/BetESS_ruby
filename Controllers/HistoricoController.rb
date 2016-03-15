require_relative "./historico.rb"

attr_accessor :historico

class HistoricoController

  def initialize(equipas)
    @historico = Historico.new(equipas)
  end

  def ultimaOdd(ultima)
    @historico.setOdds(ultima)
      end

  def toString
      @historico.equipas.each_pair do |equipa , odd|
        print equipa + " > "
        @historico.equipas[equipa].each do |odd|
          print odd + " | "
        end
        puts
      end
  end
end





