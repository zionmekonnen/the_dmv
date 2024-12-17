class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :plate_type, :registration_cost

  def initialize (facility_hash)
    @name = facility_hash[:name]
    @address = facility_hash[:address]
    @phone = facility_hash[:phone]
    @services = []
    @registered_vehicles = []
  end
  
  def add_service(service)
    @services << service
  end

  def collected_fees
    collected_fees = (0)
  end
   
  def register_vehicle(vehicle)
    vehicle.register_vehicle
    @registered_vehicles << vehicle
  

  end
  
end

