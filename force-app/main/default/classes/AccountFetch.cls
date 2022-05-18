public class AccountFetch {
    public void fetchAccounts() {
        List<Account> allAccounts = [SELECT ID, Description__c FROM Account];
        System.Debug('# of Accounts: ' + allAccounts.size());
    }
}