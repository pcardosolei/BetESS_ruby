class Evento
 include Subject
 #definir variaveis attr_reader :

 def initialize
 	@observers = []
 end

 def add_observer(observer)
 	@observers << observer
 end

 def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
 end


 def fazCenas(cena)
   notify_observers
 end
end
