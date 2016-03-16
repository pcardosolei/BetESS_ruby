module Subject
  def initialize
    @listaObservers = []
  end

  def adicionar_observer(observer)
    @listaObservers << observer
  end

  def apagar_observer(observer)
    @listaObserver.delete(observer)
  end

  def notify_Observers(tipo)
    @listaObservers.each do |observer|
      observer.update(self,tipo)
    end
  end

end
