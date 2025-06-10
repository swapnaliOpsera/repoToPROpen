public class AccountHandleApexClass {
    public static void createHighValueAccount(String name, Decimal annualRevenue) {
        if (String.isBlank(name) || annualRevenue < 100000) {
            throw new IllegalArgumentException('Invalid account data');
        }
        Account acc = new Account(
            Name = name,
            AnnualRevenue = annualRevenue,
            Industry = 'Technology'
        );
        insert acc;
    }
}