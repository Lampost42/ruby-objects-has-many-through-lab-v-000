class Docotr
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    Appointmentes.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients
    appointments.collect{|appointment| appointment.patient}
  end
end
    