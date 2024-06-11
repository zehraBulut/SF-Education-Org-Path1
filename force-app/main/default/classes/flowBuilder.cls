public class flowBuilder {
    
    @InvocableMethod(label='create account')
    public static void cerateAccount(){
        Account ac= new Account();
        ac.Name='Bank of bishkek';
        ac.Rating='Hot';
       insert ac;
    }
}