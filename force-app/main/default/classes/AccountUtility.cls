public class AccountUtility {

    public static void SetAcRatingwithContact(Account ac){
                          
        if(ac.Rating =='Hot'){
          for(Integer i=1; i<=3; i++){
            Contact con1 = new Contact();
              con1.AccountId = ac.Id;
                con1.LastName='Hot'+ i;
                  insert con1;               
               }
          }
           if(ac.Rating =='Warm'){
             for(Integer x=1; x<=2; x++){              
              Contact con2 = new Contact();
               con2.AccountId = ac.Id;          
                con2.LastName='Warm'+ x;   
                  insert con2;                
            }
          }
           if(ac.Rating =='Cold'){
            Contact con3 = new Contact();
             con3.AccountId = ac.Id;         
              con3.LastName ='Cold';
               insert con3;
       }     
    }        
   }