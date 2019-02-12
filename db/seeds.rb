carData = [
    {
        model: 'A380',
        make: 'Airbus',
        owner: 'Cam'
    },
    {
        model: 'Roadster',
        make: 'Tesla',
        owner: 'John'
    },
    {
        model: 'MKZ',
        make: 'Lincoln',
        owner: 'Jessie'
    },
    {
        model: 'AMG G63 6x6',
        make: 'Hennessey',
        owner: 'Titus'
    },
    {
        model: 'Taycan',
        make: 'Porsche',
        owner: 'Natalie'
    },
    {
        model: 'R1S',
        make: 'Rivian',
        owner: 'Brendan'
    },
    {
        model: 'Roadster SpaceX',
        make: 'Tesla',
        owner: 'Greg'
    },
    {
        model: 'GT-R 35',
        make: 'Nissan',
        owner: 'Juan'
    },
    
]

carData.each do |car|
    Car.create(car)
end