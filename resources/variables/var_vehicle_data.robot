*** Variables ***

${make}                        xpath://select[@id='make']
@{valueMake}                   Audi  BMW  Ford  Honda  Mazda  Merceds Benz  Nissan  Opel  Porshe  Renault  Skoda  Suzuki  Toyota  Volkswagen  Volvo
${enginePerformance}           xpath://input[@id='engineperformance']
${dateOfManufacture}           xpath://input[@id='dateofmanufacture']
${model}                       xpath://select[@id='model']

${menu_automobile}             //*[@id="nav_automobile"]
${valueModel}                  Scooter
${cylinderCapacity}            xpath://input[@id='cylindercapacity']
${valueCylinderCapacity}       1000

${valueEnginePerformance}      1000

${valueDateOfManufacture}      12/31/2019
${numberOfSeats}               xpath://select[@id='numberofseats']
${valueNumberOfSeats}          2
${rightHandDriveNo}            //div[7]/p/label[2]/span
${numberOfSeatsMotorcycle}     xpath://select[@id='numberofseatsmotorcycle']
${fuelType}                    xpath://select[@id='fuel']
@{valueFuelType}               Petrol  Diesel  Electric Power  Gas  Other
${payload}                     xpath://input[@id='payload']
${valuePayload}                1000
${totalWeight}                 xpath://input[@id='totalweight']
${valueTotalWeight}            1000
${listPrice}                   xpath://input[@id='listprice']
${valueListPrice}              1000
${licensePlateNumber}          xpath://input[@id='licenseplatenumber']
${valueLicensePlateNumber}     1000
${annualMileage}               xpath://input[@id='annualmileage']
${valueAnnualMileage}          1000