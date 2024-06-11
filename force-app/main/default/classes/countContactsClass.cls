public class countContactsClass {
    @future
    public static void countContactsMethod(List<Id>acIds){
        List<Account> acList= [SELECT Id,(SELECT Id FROM Contacts) FROM Account WHERE Id IN: acIds];
       
        for(Account ac: acList){
            ac.Number_Of_Contacts__c = ac.Contacts.size();            
        }
        if(acList.size()>0){
            update acList;
        }
        
    }
}


/*
  windows anonymous:
 List<Account>acList=[SELECT Id FROM Account];
List<Id> acIdList = new List<Id>();
for(Account ac: acList){
    acIdList.add(ac.Id);
}

countContactsClass.countContactsMethod(acIdList);
system.debug(acIdList);
system.debug(acIdList.size()); 
*/