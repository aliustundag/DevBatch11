public class LoopDemo {

    public void print_int_while(){
        Integer count = 1;
        while (count<=25) {
            system.debug(count);
            count++;
            
        }
    }

    public void print_N_numbers(Integer n){
        for (integer i=0; i<n; i++ ) {
            system.debug(i);
            
        }

    }

    public void print_N_Odd_numbers(Integer start, integer endInt){

        if (start > endInt) {
            system.debug(' endInt must be bigger than start');
            
        } else {


        for (Integer i = start; i <= endInt; i++){
            Integer modI = Math.mod(i,2);
            if (modI == 1) {
                system.debug(i);
            }
        }
    }
    
    
    }

}