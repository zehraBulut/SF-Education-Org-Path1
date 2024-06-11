public class AccountTriggerHandler {
    public static void  CreateAccounts(List<Account>acclist){
        for(Account ac: acclist){
            if( ac.ShippingState != ac.BillingState){
                ac.ShippingState =ac.BillingState;
            }
        }
    }
}