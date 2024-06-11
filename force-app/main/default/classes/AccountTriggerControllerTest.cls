@isTest
public class AccountTriggerControllerTest {
    @isTest
    public static void TestA(){
        
      TestingFactory.TestAccount();
        
        Account ac = [SELECT Id,Name,Rating from Account LIMIT 1];
        if(ac!= null){
            system.assertEquals('Hot',ac.Rating);
        }
    }  
}