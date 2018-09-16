class Doctor
  attr_accessor :name, :patient, :date, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    Appointments.all.map do |appointment|
      appointment.patient
    end
  end
end
