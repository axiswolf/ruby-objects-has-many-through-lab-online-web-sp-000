class Patient
  @@all = []
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
    doctor.date = self
  end
  def doctors
    #has many doctors through appointments
  end
end
