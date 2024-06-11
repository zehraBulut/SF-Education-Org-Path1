@isTest
public class ApexProgramsTest {
   @isTest
    public static void testA(){
        Integer result = ApexPrograms.maxIntegerofList(new List<Integer>{18,25,12,30,90});
        system.assertEquals(90,result);
    }
}