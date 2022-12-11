public class SoqlDemo2 {

    public static void childToParent_Soql1(){

        list<contact> listcontact = [select id, name, Account.name,account.industry from Contact
        WHERE Account.industry = 'Energy'];

        for (Contact eachContact : listcontact) {
            string accName = eachContact.Account.name;
            system.debug('contact name is '+ eachContact.Name +', its acc is '+ accName);
            
        }

    }

    public static void soqlParentToChild_1(){

        //Print the annual revenue and name of all the accounts of type 'Customer - Direct'
        //and also print the opportunity name and amount for the respective 'Closed Won' opportunuties.
        //if our outer query is account and inner query is opportunity.



        list<Account> listAccOpp = [select id, name, annualrevenue, (select name, amount from Opportunities where stageName = 'closed won')
        type from account where type = 'Customer - Direct'];

        for (Account eachAcc : listAccOpp) {
            system.debug('Account name '+ eachAcc.name + ' and its annual revenue is--> '+eachAcc.AnnualRevenue);
            for (Opportunity eachOpp : eachAcc.Opportunities) {
                system.debug('Opportunity Name---> '+ eachOpp.Name);
                system.debug('Opportunuty amount---> '+eachOpp.Amount);   
            }
        }

    }

    public static void soqlParentToChild_2(){

        //Fetch Project Name, count of high priority ticket for that project, and count of all tickets for the project. use parent to child query.

        list<salesforce_project__c> listSP = [select id, name, project_name__c, (select name, subject__c, priority__c from Salesforce_Tickets__r)
         from salesforce_project__c ];

         integer highPriority = 0;
         for (salesforce_project__c eachProject : listSP) {
            list<Salesforce_Ticket__c> ticketList = eachProject.Salesforce_Tickets__r;
            integer totalList = ticketList.size();

            for (salesforce_ticket__c eachTicket : ticketList) {
                if (eachTicket.priority__c == 'High') {
                    highPriority++;
                }
            }
            system.debug('total list = '+ totalList);
            system.debug('high priority list '+ highPriority);
               
         }
         




    }




    
}
