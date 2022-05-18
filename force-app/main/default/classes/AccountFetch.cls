public class AccountFetch {
    public void fetchAccounts() {
        List<Account> allAccounts = [SELECT ID, Description__c FROM Account WITH USER_MODE];
        System.Debug('# of Accounts: ' + allAccounts.size());
    }
}
