class Historico

  attr_reader :equipas

  def initialize(odds)
    @equipas = Hash.new("No available odds")
    odds.each do |equipa, odd|
      @equipas[equipa] = [odd]
    end
  end

  def setOdds(ultima)
      ultima.each do |equipa, odd|
      @equipas[equipa] << odd
      end
  end
end




