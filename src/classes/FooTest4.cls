@isTest(seeAllData = true)
public class FooTest4 {
        // This test accesses an existing account. 
    // It also creates and accesses a new test account.
  /*  @IsTest
    static void myTestMethod1() {
        // Query an existing account in the organization. 
        //Account a = [SELECT Id, Name FROM Account WHERE Name='Acme'];
        
        //System.assert(a != null);
        
        // Create a test account based on the queried account.
        //Account testAccount = a.clone();
        //testAccount.Name = 'Acme Test';
        //insert testAccount;
        
        // Query the test account that was inserted.
        Account testAccount2 = [SELECT Id, Name FROM Account 
                                WHERE Name='Acme Test' LIMIT 1];
        System.assert(testAccount2 != null);
    }
     
    
    // Like the previous method, this test method can also access all data
    // because the containing class is annotated with @IsTest(SeeAllData=true). */
    @IsTest
    static void myTestMethod2() {
        // Can access all data in the organization.
   }
     @isTest
    static void testAccountTrigger() {
        Test.startTest();
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        Test.stopTest();
        // Fetch the inserted record and verify the trigger logic executed
        Account insertedAcc = [SELECT Phone FROM Account WHERE Id = :acc.Id];
        System.assertEquals('0000000000', insertedAcc.Phone);
    }
}