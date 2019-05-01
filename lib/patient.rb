class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def appointments
    #has many appointments
  end
  def new_appointment
    Appointment.new(date, self, doctor)
  end
  def doctors
    #has many doctors through appointments
  end
end
