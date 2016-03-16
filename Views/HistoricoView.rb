class HistoricoView

  def initialize
  end

  def toString(evento)
    evento.historico.equipas.each do |equipa , odd|
      print "#{equipa}  > #{odd}"
      puts
    end
  end
end
