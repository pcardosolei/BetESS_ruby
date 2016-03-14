class Historico

  attr_reader :equipas

  def initialize(odds)
    @equipas = Hash.new("odds_equipas")
    odds.each do |equipa, odd|
      @equipas[equipa] = [odd]
    end
  end

  def ultimaOdd(ultima)
      ultima.each do |equipa, odd|
      @equipas[equipa] << odd
      end
  end

  def toString
      @equipas.each_pair do |equipa , odd|
        print equipa + " > "
        @equipas[equipa].each do |odd|
          print odd + " | "
        end
        puts
      end
  end
end



#person =   {"porto"=>"1.2", "empate"=>"3", "braga"=>"3.5"}
#person1 =   {"porto"=>"1.5", "empate"=>"2.5", "braga"=>"4"}

#evento1 = Historico.new(person)
#evento1.ultimaOdd(person1)
#evento1.toString


