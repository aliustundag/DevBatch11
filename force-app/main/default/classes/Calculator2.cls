public class Calculator2 {

    public integer add (integer a , integer b){
    Integer sum = a+b;
    return sum;

    }

    public Integer add(integer a, integer b, integer c){
        integer sum = a+b+c;
        return sum;
    }

    public boolean leapYearCheck(date dt){
        Integer year = dt.year();
        boolean isLeap = date.isLeapYear(year);
        return isLeap;
    }

    public static Integer add(list<integer> intList){

        

       integer sum = 0;
       
       for (integer eachInteger : intList) {
        sum = sum + eachInteger;

       }

       return sum;

    }

    }


