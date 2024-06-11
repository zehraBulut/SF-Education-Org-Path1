public class ApexCodes {
   public static void myMethod() {
 
       Account acc = new Account ();
       acc.Name ='my accY' ;
       acc.BillingState ='USA' ;
       acc.BillingCity ='BlW';
       acc.BillingCountry = 'AVRUPA' ;
       acc.BillingPostalCode = '1234' ;
       insert acc;
       
       acc.ShippingCountry = acc.BillingCountry;
         acc.ShippingState = acc.BillingState ;
         acc.ShippingCity = acc.BillingCity ;
          acc.ShippingPostalCode = acc.BillingPostalCode;              
              update acc;
       List<Contact> contactList = new List<Contact>();
      for (Integer i = 1; i <= 5; i++) {         
    Contact c = new Contact();
    c.LastName = acc.Name + ' (' + i + ')';
    c.MailingCountry = acc.BillingCountry;
    c.MailingState = acc.BillingState;
    c.MailingCity = acc.BillingCity;
    c.MailingPostalCode = acc.BillingPostalCode;
    c.AccountId = acc.Id;
    contactList.add(c);
 }  
    insert contactList;
      System.debug(contactList);
       }    
   }