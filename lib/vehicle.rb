require 'date'

class Vehicle
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine
          
  def initialize(vehicle_details)
    @vin = vehicle_details[:vin]
    @year = vehicle_details[:year]
    @make = vehicle_details[:make]
    @model = vehicle_details[:model]
    @engine = vehicle_details[:engine]
  end
  
  def registration_date
    registration_date = (nil)
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric_vehicle?
    @engine == :ev
  end
end
