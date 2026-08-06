@IsTest
public class VulnerableAccountSearchTest {
    @IsTest
    static void testFindAccounts() {
        // Create sample test data
        Account a1 = new Account(Name = 'TestAccountOne');
        Account a2 = new Account(Name = 'AnotherAccount');
        insert new List<Account>{ a1, a2 };
        // Call method with normal user input
        List<Account> result = VulnerableAccountSearch.findAccounts('Test');
        // Validate result: should return at least one matching record
        System.assert(!result.isEmpty(), 'Expected at least one matching account');
        System.assertEquals('TestAccountOne', result[0].Name);
        // Optional: test with special characters to demonstrate string concatenation behavior
        List<Account> specialInputResult = VulnerableAccountSearch.findAccounts('%');
        System.assertNotEquals(0, specialInputResult.size(),
            'SOQL wildcard should still return records (demonstrating vulnerability)');
    }
}