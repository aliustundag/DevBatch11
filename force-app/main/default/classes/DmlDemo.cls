public class DmlDemo {
    public static void dmlInsertDemo_stndObj(){

        //standart object
        Account acc = new account();
        acc.name = 'SoftInnovas';
        system.debug('Not inserted '+ acc);

        insert acc;
        system.debug('Inserted '+ acc);

    }

    
    public static void dmlInsertDemo_customObj(){
        //custom object
        Salesforce_project__c spNew = new salesforce_project__c();
        spNew.project_name__c = 'Teach DML to batch 11';
        spNew.description__c = 'everybody is doing great';

        insert spNew;     

    }

    public static void dmlUpdateDemo_1(){
        Account acc = new Account();
        acc.name = 'softinnovas';
        insert acc;

        acc.name = 'salesforce inc.';

        update acc;
    

    }
   
}
