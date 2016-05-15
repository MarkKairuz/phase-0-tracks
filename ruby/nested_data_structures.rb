# Highways nested data structures
# by Mark Kairuz

# Nested highway 405 system
Highway_405 = {
    # mini van in highway 405
    mini_van: {
        type: 'Dodge Grand Caravan',
        # mini van info
        car_info: {
            color: 'red',
            engine: 'V6',
            fuel: 'gas'
        },
        # passengers and sports equipment
        contains: [
            'Kelly', 
            'Clark',
            'Susan',
            'Mary',
            'soccer balls'
        ]
    },
    # Sports car in highway 405
    sports_car: {
        type: 'Chevrolet Camaro coupe',
        # Sports car info
        car_info: {
            color: 'maroon',
            engine: 'V8',
            fuel: 'gas'
        },
        # One passenger
        contains: [
            'Blake'
        ]
    },
    # Delivery truck in highway 405
    delivery_truck: {
        type: 'Ford E-350 Econoline',
        # Delivery truck info
        car_info: {
            color: 'white',
            engine: 'V8',
            fuel: 'diesel'
        },
        # Passenger with gardening equipment
        contains: [
            'Ahzar',
            'fertilizers'
        ]
    }
}

# Make a few prints of calls and make them look decent on the output.
puts "#{Highway_405[:sports_car][:contains][0]} is revving his #{Highway_405[:sports_car][:car_info][:engine]} engine."
puts "The #{Highway_405[:delivery_truck][:type]} needs to deliver the #{Highway_405[:delivery_truck][:contains][1]}."
puts "#{Highway_405[:mini_van][:contains][0]} needs to drop off the kids with her shiny new #{Highway_405[:mini_van][:car_info][:color]} #{Highway_405[:mini_van][:type]}."


