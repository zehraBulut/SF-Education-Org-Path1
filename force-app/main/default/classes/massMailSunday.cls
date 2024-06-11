public class massMailSunday {
    public class req{
        @invocableVariable(label='Email subject')
        public string emailSubject;
        
        @invocableVariable(label='Email Body')
        public string emailBody;
        
        @invocableVariable(Label='Email List')     
         public List<string> emailList;               

    }
    
    
    
}