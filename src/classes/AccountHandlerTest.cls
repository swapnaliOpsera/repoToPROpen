@isTest
public class AccountHandlerTest {
   /* @isTest
    static void testCreateHighValueAccount() {
        // This test provides invalid data, so it will hit the exception
        Test.startTest();
        AccountHandler1.createHighValueAccount('', 50000); // This line will throw an exception
        Test.stopTest();
    }*/
	
    @isTest
    static void testCreateHighValueAccount_Valid() {
        Test.startTest();
        AccountHandler1.createHighValueAccount('Test Corp', 200000);
        Test.stopTest();
        Account[] results = [SELECT Id FROM Account WHERE Name = 'Test Corp'];
        System.assertEquals(1, results.size());
    }
    @isTest
    static void testCreateHighValueAccount_Invalid() {
        try {
            AccountHandler1.createHighValueAccount('', 50000);
            System.assert(false); // should not reach here
        } catch (Exception e) {
            System.assert(e.getMessage().contains('Invalid account data'));
        }
    } 
}