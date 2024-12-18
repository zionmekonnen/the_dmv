require 'date'

class Vehicle
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine,
              :plate_type,
              :antique,
              :register_date

          
  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
    @registration_date = nil
    @plate_type = nil
  end
  
  def update_registration_date
    @registration_date = Date.today
  end

  def antique?
    Date.today.year - @year >= 25
  end

  def electric_vehicle?
    @engine == :ev
  end

  def update_plate_type(type)
    @plate_type = type
  end

end
