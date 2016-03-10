class Evento
 attr_accessor :vencedor, :state

  def initialize(equipas)
    @equipas = equipas
  end

  def oddEvento
      @equipas.each do |equipa, odd|
      puts equipa + "--" + odd
      end
  end

  def oddEscolha(escolha)
      return equipas[escolha]
  end

  def showEquipas
      return @equipas.keys
  end


  def mostraHistorico

  end

  def modificaOdds

  end
  #meter bookie, listaApostas
  #observers
  #

end

person =   {"porto"=>"1.2", "empate"=>"3", "braga"=>"3.5"}

evento1 = Evento.new(person)
evento1.oddEvento
evento1.showEquipas
