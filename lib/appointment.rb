class Appointment
  
  @@all = []
  
  attr_accessor :date, :doctor, :patient
  
  def initialize(patient, doctor, date)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
end
    