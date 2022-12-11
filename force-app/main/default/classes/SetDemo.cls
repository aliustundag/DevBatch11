public class SetDemo {
    public static void citySet() {

        set<string> cities = new Set<String>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        cities.add('TOKYO');

        system.debug('set of cities = ' + cities);

    }

    public static void randomIntegerSet(){

        Set<integer> integerSet = new Set<integer>();
        integerSet.add(15);
        integerSet.add(19);
        integerSet.add(23);
        integerSet.add(15);
        integerSet.add(99);
        integerSet.add(125);
        integerSet.add(20);
        integerSet.add(15);

        system.debug('integer set ---> '+ integerSet);

    }

    public static Set<string> capitalizeAllSet(set<string> setString){

        Set<String> returnSet = new Set<String>();

        for (string eachstring : setString) {
         string tempStr = eachstring.toUpperCase();
         returnSet.add(tempStr);
            
        }
        
        return returnSet;

    }

    
}
