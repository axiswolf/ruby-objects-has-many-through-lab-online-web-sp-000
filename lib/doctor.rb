class Doctor
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def new_appointment(date, patient)
    Appointment.new(date,patient,self)
  end
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  def patients
    appointments.map do |appt|
      appt.patient
    end
    
end
