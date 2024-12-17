require 'date'

class Vehicle
  attr_reader :vin,
              :year,
              :make,
              :model,
              :engine,
              :plate_type,
              :registration_cost
              :antique

          
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
    Date.today.year - @year >= 25
  end

  def electric_vehicle?
    @engine == :ev
  end
  
  def register_vehicle
    
    if antique?
      @plate_type = :antique
      @registration_cost = 25
    elsif electric_vehicle?
      @plate_type = :ev
      @registration_cost = 200
    else 
      @plate_type = :regular 
      @registration_cost = 100
    end
  end
end
