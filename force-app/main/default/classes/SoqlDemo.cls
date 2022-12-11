public class SoqlDemo {
    public static void accountSOQL_1(){
        //SOQL Query always returns the List<sObject>

        list<account> listAccount = [Select id, name from Account where Name like 's%' ];
        system.debug(listAccount);
        

        //SOQL can return only sObject if it is returning ONLY 1 RECORD
        Account acc = [Select id, Name from Account ORDER BY CreatedDate desc LIMIT 1 ];
        system.debug('latest account created is '+ acc);
    }


    public static void accountSOQL_2(){

        Account acc = [select id, name, phone, accountNumber from Account 
        ORDER BY CreatedDate desc LIMIT 1];
        system.debug('latest account created is '+ acc);

        String accName = acc.Name;
        String accPhone = acc.Phone;
        system.debug('accName = '+ accName + ', phone is '+ accPhone);
        system.debug('account number is '+ acc.AccountNumber);
        
    }

    public static void accountSOQL_3(){
        List<Account> listAccount = [Select Id, name, phone, industry,  AccountNumber from 
        Account ORDER BY CreatedDate DESC];
        system.debug('all accounts '+ listAccount);

        for (Account eachAccount : listAccount) {
            String accName = eachAccount.Name;
            String accPhone = eachAccount.Phone;
            String accIndustry = eachAccount.Industry;
            String accAccountNumber = eachAccount.AccountNumber;

            system.debug( accName + ' ---- '+ accPhone + ' ---- '+accIndustry + ' ---- '+
            accAccountNumber);
            
        }
            
    }

    public static void soqlDemo_Filter(){
        string accNameFilter = 'Salesforce Inc.';
        List<Account> listAccount = [select id, name from account where name = :accNameFilter];
        system.debug(listAccount);

    }

    public static void soqlDemo_Filter(string accNameFilter){

        List<Account> listAccount = [select id, name from account where name = :accNameFilter WITH SECURITY_ENFORCED];
        system.debug(listAccount);

    }

    public static void accountSOQL_Filter(list<string> accNames){
        list<account> listAcc = [select id, name, phone from Account where name IN :accNames];
        system.debug('list of accounts ---> '+ listAcc);

    } 

}
   

