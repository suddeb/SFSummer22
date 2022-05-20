public with sharing class GetAccountDataController {
    @AuraEnabled(cacheable=true scope='global')
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Phone FROM Account];
    }

    //Overloading is not allowed for AuraEnabled Methods
    /*
    public static List<Account> getAccounts() {
        return [SELECT Id, Name FROM Account];
    }
    */

    //Overloading is allowed
    public static String sayHello(){
        return 'Hello';
    }
    public static String sayHello(String name){
        return 'Hello '+ name;
    }
}