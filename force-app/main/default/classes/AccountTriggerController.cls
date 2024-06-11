public class AccountTriggerController {
    public static void SetAcR(List<Account>acList){        
      for(Account  ac : acList){               
          AccountUtility.SetAcRatingwithContact(ac);          
       }
   }
}