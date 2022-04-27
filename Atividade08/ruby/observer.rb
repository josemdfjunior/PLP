# The Subject interface declares a set of methods for managing subscribers.
class Subject
  # Attach an observer to the subject.
  def attach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Detach an observer from the subject.
  def detach(observer)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end

  # Notify all observers about an event.
  def notify
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end


class WeatherData < Subject
 
  attr_accessor :humidity
  attr_accessor :temperature
  attr_accessor :pressure

  def initialize
    @observers = []
  end

  def attach(observer)
    puts 'Subject: Attached an observer.'
    @observers << observer
  end

  def detach(observer)
    @observers.delete(observer)
  end

  def notify
    puts 'Subject: Notifying observers...'
    @observers.each { |observer| observer.update(self) }
  end

  def change_measures(a, b, c)
    puts "\nSubject: I'm doing something important."
    @humidity = a
    @temperature = b
    @pressure = c
    puts "Subject: humidity has just changed to: #{@humidity}"
    puts "Subject: temperature has just changed to: #{@temperature}"
    puts "Subject: pressure has just changed to: #{@pressure}"
    notify
  end
end

# The Observer interface declares the update method, used by subjects.
class Observer
  # Receive update from subject.
  def update(_subject)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

class ConcreteObserver < Observer
  # @param [Subject] subject
  def update(subject)
    puts 'ConcreteObserver: Reacted to the event'
  end
end

subject = WeatherData.new

observer_a = ConcreteObserver.new
subject.attach(observer_a)

observer_b = ConcreteObserver.new
subject.attach(observer_b)

subject.change_measures(1, 2, 3)
subject.change_measures(5, 7, 13)

subject.detach(observer_a)

subject.change_measures(18, 23, 26)