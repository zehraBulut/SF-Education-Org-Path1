public class ContactUtility {
    
    @InvocableMethod(Label='delete cont')
    public static void DeleteNContacts (List<Integer> n){    
        
        List<Contact> deletedList = [SELECT Id FROM Contact ORDER BY CreatedDate ASC LIMIT :n[0]];

        delete deletedList;
    }
}