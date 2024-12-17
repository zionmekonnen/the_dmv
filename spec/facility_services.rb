require 'spec_helper'
require 'RSpec'

RSpec.describe Facility do
    it 'exists' do
        facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
        facility_2 = Facility.new({name: 'DMV Northeast Branch', address: '4685 Peoria Street Suite 101 Denver CO 80239', phone: '(720) 865-4600'})
        
        expect(facility_1).to be_an_instance_of(Facility)
        expect(facility_2).to be_an_instance_of(Facility)
    end

    describe Vehicle do
        it 'exists' do
            cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice})
            bolt = Vehicle.new({vin: '987654321abcdefgh', year: 2019, make: 'Chevrolet', model: 'Bolt', engine: :ev})
            camaro = Vehicle.new({vin: '1a2b3c4d5e6f', year: 1969, make: 'Chevrolet', model: 'Camaro', engine: :ice})
    
            expect(cruz).to be_an_instance_of(Vehicle)
            expect(bolt).to be_an_instance_of(Vehicle)
            expect(camaro).to be_an_instance_of(Vehicle)
        end
    end

    it "adds new service" do
        facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
        facility_1.add_service('Vehicle Registration')

        expect(facility_1.services).to include('Vehicle Registration')
    end

    it 'returns nil for cruz registration date' do
        cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice})
        
        expect(cruz.registration_date).to eq(nil)
    end

    it 'returns [] for registered vehicles' do
        facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
        
        expect(facility_1.registered_vehicles).to eq([])

    end
    
    it 'returns [] for collected fees' do
        facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})

        expect(facility_1.collected_fees).to eq(0)

    end

    it 'registers a vehicle' do
        facility_1 = Facility.new({name: 'DMV Tremont Branch', address: '2855 Tremont Place Suite 118 Denver CO 80205', phone: '(720) 865-4600'})
        cruz = Vehicle.new({vin: '123456789abcdefgh', year: 2012, make: 'Chevrolet', model: 'Cruz', engine: :ice})
         
        expect(facility_1.register_vehicle(cruz)).to include(cruz)
    end



end



