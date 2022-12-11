public class Car {

    public string carColor='';    // this is a class variable and public
    public string carName = '';
    Integer maxSpeed = 150;  // this is a class variable and private
    
    public Datetime switchOn(){
        Datetime switchOnTime = Datetime.now();
        system.debug('starting the car');
        return switchOnTime;
    }

    public void drive(){
        system.debug('driving ' + carName + ' of color '+ carColor);
    }

    public void driveAtMaxSpeed(){
        string drivingDescription = 'Driving '+carName +' at '+maxSpeed+' km/hr';
        system.debug(drivingDescription);
    }


    
}
