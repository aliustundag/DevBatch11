trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
  /*  if (trigger.isBefore && trigger.isInsert) {
        system.debug('trigger.old before insert = '+ trigger.old);
        
    }if (trigger.isAfter && trigger.isInsert) {
        system.debug('trigger.old after insert = ' +trigger.old);
        
    }if (trigger.isBefore && trigger.isUpdate) {
        system.debug('trigger.old after update = ' +trigger.old);

    }if (trigger.isAfter && trigger.isUpdate) {
        system.debug('trigger.old after update = ' +trigger.old);
    }

    */


    //======================================================================================================


    /*if (trigger.isAfter) {
        // want to print old names on update. so we will do it in after update
        // we can also do it in before update

        if (trigger.isUpdate) {
            for (account oldAccount : trigger.old) {
                system.debug('old acc id = '+ oldAccount.id + ', old acc name '+ oldAccount.Name);    
            }
            for (account newAccount : trigger.new) {
                system.debug('new acc id = '+ newAccount.id + ', new acc name '+ newAccount.Name);
                
            }
            
        }    
    }
*/
    //===============================================================================================================
    

    if (trigger.isAfter) {
        List<Account> accTriggerNew = trigger.new;

        set<id> setIds = new set<id>();
        for (account newAcc : accTriggerNew) {
           id accId = newAcc.id;
           setIds.add(accId);    
        }
        system.debug(setIds);

        
    }


}