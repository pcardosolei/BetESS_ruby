class Evento
 include Subject
 #definir variaveis attr_reader : 


 def fecharEvento(evento)
  #close(evento)
  notify_observers
 end
end