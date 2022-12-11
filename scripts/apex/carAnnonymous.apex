car tesla = new car();
tesla.carName = 'model S';
tesla.carColor = 'Black';
tesla.switchOn();
system.debug('tesla car color ==> '+ tesla.carColor);
system.debug('tesla ==>'+ tesla);
tesla.drive();
Datetime s = tesla.switchOn();
system.debug('tesla done');


car bmw = new car();
bmw.carName = 'xyz';
bmw.carColor = 'white';
Datetime b = bmw.switchOn();
system.debug('bmw car color ==> '+ bmw.carColor);
system.debug('bmw ==>'+bmw);
tesla.drive();
bmw.driveAtMaxSpeed();
system.debug('bmw done');

car toyota = new car();
toyota.switchOn();
toyota.drive();

