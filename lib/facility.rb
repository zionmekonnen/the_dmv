class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :plate_type, :registration_cost, :collected_fees

  def initialize (facility_hash)
    @name = facility_hash[:name]
    @address = facility_hash[:address]
    @phone = facility_hash[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end
  
  def add_service(service)
    @services << service
  end

  
  
  
  def register_vehicle(vehicle)
binding.pry
      if vehicle.antique?
        vehicle.update_plate_type(:antique)
        @collected_fees += 25
      elsif vehicle.electric_vehicle?
        vehicle.update_plate_type(:ev)
        @collected_fees += 200
      else 
        vehicle.update_plate_type(:regular)
        @collected_fees += 100
  
      end
    binding.pry
      @registration_date = Date.today
  
      @registered_vehicles << vehicle
   end

end

