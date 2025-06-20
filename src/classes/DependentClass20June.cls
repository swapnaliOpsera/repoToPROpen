// Helper Class (Dependent) demo
public class DependentClass20June {
    public static String getAccountDetails(Id accountId) {
        Account acc = [SELECT Name, Industry FROM Account WHERE Id = :accountId];
        return 'Account Name: ' + acc.Name + ', Industry: ' + acc.Industry;
    }
}
/*
// Main Class (Using Helper)
public class AccountManager {
    public String getAccountInfo(Id accountId) {
        return AccountHelper.getAccountDetails(accountId);
    }
} */