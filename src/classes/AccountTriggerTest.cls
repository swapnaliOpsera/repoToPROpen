@isTest
private class AccountTriggerTest {
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