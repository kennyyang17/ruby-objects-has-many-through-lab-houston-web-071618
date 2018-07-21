class Appointment
  attr_accessor :date, :doctor, :patient
  @@all=[]

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor= doctor
    @date = date
    @@all << self
  end

  def self.all
  @@all
  end

end



# doctor = Doctor.new("Dr. Doctor")
# patient = Patient.new("Devin Townsend")
# appointment = Appointment.new(patient, doctor, "Friday, January 32nd")
