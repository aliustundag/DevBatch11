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
    
/*
    if (trigger.isAfter) {
        List<Account> accTriggerNew = trigger.new;

        set<id> setIds = new set<id>();
        for (account newAcc : accTriggerNew) {
           id accId = newAcc.id;
           setIds.add(accId);    
        }
        system.debug(setIds);    
    }

    =================================================================================================================

*/

    List<Account> accTriggerOld = trigger.old;
    List<Account> accTriggerNew = trigger.new;
    Map<Id,Account> accTriggerOldMap = trigger.oldMap;
    Map<Id,Account> accTriggerNewMap = trigger.newMap;

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert old ==> '+ accTriggerOld);
        system.debug('before insert new ==> '+ accTriggerNew);

        system.debug('before insert old map ==> '+ accTriggerOldMap);
        system.debug('before insert new map ==> '+ accTriggerNewMap);
    }

    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After insert old ==> '+ accTriggerOld);
        system.debug('After insert new ==> '+ accTriggerNew);

        system.debug('After insert old map ==> '+ accTriggerOldMap);
        system.debug('After insert new map ==> '+ accTriggerNewMap);   
    }

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update old ==> '+ accTriggerOld);
        system.debug('before update new ==> '+ accTriggerNew);

        system.debug('before update old map ==> '+ accTriggerOldMap);
        system.debug('before update new map ==> '+ accTriggerNewMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After update old ==> '+ accTriggerOld);
        system.debug('After update new ==> '+ accTriggerNew);

        system.debug('After update old map ==> '+ accTriggerOldMap);
        system.debug('After update new map ==> '+ accTriggerNewMap);
    }





}