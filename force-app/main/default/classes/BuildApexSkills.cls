public class BuildApexSkills {
    
    public static void createNewContact(string firstName,string lastName,string name){
       
        Contact con = new Contact();
        
        if(string.isNotBlank(name)){
            
       name = name.replaceAll(' +', ' ');  
            
         List<string>  nameParts = name.split(' ');
           if(nameParts.size()>2){
            firstName= nameParts[0];
            lastName= nameParts[nameParts.size()-1];
        
        }else if(nameParts.size()==2){
              firstName= nameParts[0];
              lastName= nameParts[1];           
        }else{
           lastName=nameParts[0]; 
        }
      }
    } 
   }