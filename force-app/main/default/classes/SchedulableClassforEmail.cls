public class SchedulableClassforEmail implements Database.Batchable<sObject>,Database.Stateful{
    
    public Database.QueryLocator start(Database.BatchableContext BC){
        Integer currentMonth= Date.today().month();
        Integer currentDay= Date.today().day();
        
        return Database.getQueryLocator([SELECT Id,firstName,LastName,Email FROM Contact
                                        WHERE CALENDAR_MONTH(Birthdate)=:currentMonth
                                        AND DAY_IN_MONTH(Birthdate)=:currentDay]);
        
    }
    public void execute (Database.BatchableContext BC,list<Contact>ListCont){
        
        List<Messaging.SingleEmailMessage> emailsToSend= new List<Messaging.SingleEmailMessage>();
     
         for(Contact con:ListCont){
           
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            
            email.setToAddresses(new List<String> {con.Email});
            email.setSubject('Happy Birthdate' +  con.FirstName + con.LastName  +'!');
            email.setPlainTextBody('As Silverline family, we wish you a very happy birthday and send you best wishes for much happiness in your life!');           
            emailsToSend.add(email);
          }
          Messaging.sendEmail(emailsToSend);
        
      }
    public void finish(Database.BatchableContext BC) {
      
    }
    
}