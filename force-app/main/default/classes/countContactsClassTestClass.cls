//countContactsClass ıcın test class
@isTest
 public class countContactsClassTestClass {
    @isTest
     private static void testMethodA(){
        
        Account ac = new Account(Name='xxx');
         insert ac;
         
         List<Id> IdList = new List<Id>();
         IdList.add(ac.Id);
         
         List<Contact> conList = new List<Contact>();
         for(Integer i=1; i<=10;i++){
             conList.add(new Contact(LastName=ac.Name +i,AccountId =ac.Id ));                                 
         }
         insert conList;
             
    }
}