public class stringArrayTest {
    public static List<string> generateStrArray(Integer n){
        List<string> Fruits = new List<string>();
        for(Integer i=0; i<n; i++){
            Fruits.add('test' + i);
            system.debug(Fruits);
        }       
       return Fruits; 
    }
}