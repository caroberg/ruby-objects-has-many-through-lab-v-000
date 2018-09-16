#class Patient
  #attr_accessor :name, :doctor, :date
#  @@all = []

#  def initialize(name)
#    @name = name
#    @@all << self
#  end
#
#  def self.all
#    @@all
#  end
#
#  def new_appointment(doctor, date)
#    appointment = Appointment.new(doctor, self, date)
#  end
#
#  def appointments
#    Appointment.all.select do |appointment|
#      appointment.patient == self
#    end
#  end
#
#  def doctors
#    Appointment.all.map do |appointment|
#      appointment.doctor
#    end
#  end
#end

class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all 
    @@all
  end
  
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end
end
