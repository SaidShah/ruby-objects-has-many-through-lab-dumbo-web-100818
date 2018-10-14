require "pry"
class Patient

  @@all = []

  attr_accessor :name, :all

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |each_appt|
      each_appt.patient == self
    end
  end

  def doctors
    appointments.collect do |each_appt|
      each_appt.doctor
    end
  end


end
