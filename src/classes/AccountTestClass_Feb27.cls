@isTest
public class AccountTestClass_Feb27 {

    // Basic test method to check Account creation
    @isTest
    public static void testAccountCreation() {

        // Step 1: Create a new Account record
        Account testAccount = new Account(
            Name = 'Test Account'
        );

        // Step 2: Insert the Account record
        insert testAccount;

        // Step 3: Query the Account record to verify it was inserted correctly
        Account insertedAccount = [SELECT Name FROM Account WHERE Id = :testAccount.Id LIMIT 1];

        // Step 4: Basic assertion to check the account name
        System.assertEquals('Test Account', insertedAccount.Name);
    }
}