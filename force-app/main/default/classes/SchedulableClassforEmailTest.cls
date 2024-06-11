@isTest
 public class SchedulableClassforEmailTest {
 @isTest
    public static void test(){
        Contact con= new Contact();
        
        con.LastName='myContact Test';
        con.Birthdate= Date.today();
        con.Email='ozgurdestina@gmail.com';
        insert con;
        
        SchedulableClassforEmail batch =new SchedulableClassforEmail();
        Database.executeBatch(batch);
        
  }
}