public class AccountUtils {
    public static List<Account> accountsByState (String stateAbbreviation){
        return [SELECT Id, Name FROM Account WHERE BillingState = :stateAbbreviation];
    }
}