public with sharing class GetAccountDataController {
    @AuraEnabled(cacheable=true scope='global')
    public static List<Account> getAccounts() {
        return [SELECT Id, Name, Phone FROM Account];
    }
}
