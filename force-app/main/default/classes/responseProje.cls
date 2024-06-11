public class responseProje {
@future(callout=true)
    public static void getData(){
        
        Http x= new Http();
        
        HttpRequest req = new HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://wisequarter1--erp.sandbox.my.salesforce.com/services/apexrest/ProductWebService');
        
        HttpResponse res = x.send(req);
        string a = res.getBody();
        
        containerClass b =(containerClass)JSON.deserialize(a,containerClass.class);
 List<Product__c > productsList = new List<Product__c >();
        
       Product__c sonHal = new Product__c();
        sonHal.Name = b.productName;
        sonHal.productERPId__c=b.productERPId;
            sonHal.productCode__c=b.productCode;
            sonHal.wheelDrive__c=b.wheelDrive;
        
           productsList.add(sonHal);
        insert productsList;
    }
}