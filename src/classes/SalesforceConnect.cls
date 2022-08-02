public class SalesforceConnect {
    
    //@AuraEnabled
    public static void getCasesFromSalesforceOrgB(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        //request.setEndpoint('https://fexleservicesprivatelimi38-dev-ed.my.salesforce.com/services/apexrest/Cases');
        request.setEndpoint('callout:Salesforce_Org_B/services/apexrest/Cases');
        request.setMethod('GET');
        //request.setHeader('Authorization', 'Bearer !AQYAQMzrAe0wm6moxMIIG7.w1mahdc704ppN0GnJP4cT1O2Xzn_kA_QDHf3_eaf2qi4B9q8sCtlBlWtO0fAX0FZtP23.TvzO');
        
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) {
           System.debug('Random reaponse :- ' + response.getBody());
          // return response.getBody(); 
        }
        //return '';
    }

    public static void createCaseInSalesforceOrgB(){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:Salesforce_Org_B/services/apexrest/Cases');
        request.setMethod('POST');
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"subject":"Case From Salesforce org A","status":"New","origin":"Web","priority":"Medium"}');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        System.debug('Random reaponse :- ' + response.getBody());
        if (response.getStatusCode() == 200) {
           System.debug('Random reaponse :- ' + response.getBody());
        }
    }
}