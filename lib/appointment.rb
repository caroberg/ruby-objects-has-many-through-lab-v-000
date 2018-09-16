#class Appointment
#  attr_accessor :date, :patient, :doctor
#  @@all = []
#
#  def initialize(date, patient, doctor)
#    @date = date
#    @patient = patient
#    @doctor = doctor
#    @@all << self
#  end
#
#  def self.all
#    @@all
#  end
#end

class Appointment
  attr_accessor :doctor, :patient, :name 
  @@all = []

  def initialize(name, patient)
    @name = name 
    self.patient = patient  
    patient.add_appointment(self) 
    @@all << self
  end 

  def self.all 
    @@all 
  end
end
