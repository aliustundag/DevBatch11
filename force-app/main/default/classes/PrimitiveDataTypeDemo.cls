public class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        system.debug('Print Data Type');
        string batchName = 'Batch11';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        system.debug( batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);
    }

    public void printBasicDataType2(){
        Object obj1 = ' assigning string to object. allowed?';
        Object obj2 = 5000;
        Object obj3 = false;

        Id accountId = '0015h000014QXcyAAG';

        system.debug('id --> '+ accountId);
        system.debug(obj1);
        system.debug(obj2);
        system.debug(obj3);


    }
    
   
}
