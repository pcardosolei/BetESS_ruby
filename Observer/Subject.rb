module Subject
  def initialize
    @observers = []
  end
  def add_observer(observer)
    @observers << observer
  end
  def delete_observer(observer)
    @observer.delete(observer)
  end
  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def notifyObservers(observer,message)
  	@observers.each do|obj|
  		if obj == observer
  			obj.update()
  		end
  	end
  end
end
