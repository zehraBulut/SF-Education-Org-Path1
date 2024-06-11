//As a Salesforce administrator, I need to create a new user account for Will Smith so that he can access our Salesforce org.

public class UserUtility {
    public static void newSystemAdmin(string FN,string LN){
       
        Profile pr = [SELECT Id FROM Profile WHERE Name='System Administrator'];
        
        string firstName= FN;
        string lastName= LN;
        string userEmail = firstName + '.' + lastName + '@pfh.com' ;
        
        User newUser = new User ();                
        newUser.FirstName= firstName;
        newUser.LastName= lastName;
        newUser.Alias=firstName.substring(0,2) + lastname.substring(0,2);
        newUser.Email= userEmail ;        
        newUser.username= userEmail ;       
        newUser.TimeZoneSidKey='America/Lima';
        newUser.LocaleSidKey='en_US';
        newUser.EmailEncodingKey='UTF-8';
        newUser.LanguageLocaleKey='en_US';       
        newUser.ProfileId= pr.Id;        
        insert newUser;
        
    }   
}