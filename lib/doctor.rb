  require "pry"
class Doctor

  attr_accessor :name, :all

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |each_appt|
      each_appt.doctor == self
    end
  end

  def patients
    appointments.collect do |each_appt|
      each_appt.patient
    end
  end 



end
