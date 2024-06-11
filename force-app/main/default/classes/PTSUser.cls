public class PTSUser {
    public static void GetUser(){
        
       Http http= new Http();
       HttpRequest req = new HttpRequest();
       req.setEndPoint('https://api.pathtosalesforce.com/JSON/user.php');
       req.setMethod('GET');
        
       HttpResponse res = http.send(req);
       system.debug(res.getBody());
       
      //deserialize et json formatını --< apexe donusturmek ıcın            
        newContact newCon = (newContact)system.JSON.deserialize(res.getBody(),newContact.class);//json to apex 
        system.debug(newCon);
        
      // contact objectını olustrup fieldlerı ıle  map yaparak ekle 
        Contact con = new Contact();
        con.FirstName= newCon.firstName;
        con.LastName = newCon.lastName;
        con.Email=newCon.email;       
        
        insert con;
        
    }  //bu classı baska dssarda bı apex classtada olusturabılırsın-ayynısıı
        public class newContact{
            
        public String firstName;
        public String lastName;
        public String email;      
        
    }      
    
}