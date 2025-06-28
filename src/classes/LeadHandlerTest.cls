@isTest
private class LeadHandlerTest {

    @isTest
    static void testCreateLead_ValidInput() {
        Test.startTest();
        String result = LeadHandler.createLead('John', 'Doe', 'OpenAI');
        Test.stopTest();
        System.assert(result.contains('Lead created with Id'));
    }

    @isTest
    static void testCreateLead_MissingFirstName() {
        Test.startTest();
        String result = LeadHandler.createLead('', 'Doe', 'OpenAI');
        Test.stopTest();
        System.assertEquals('First and last name are required', result);
    }

    @isTest
    static void testCreateLead_MissingLastName() {
        Test.startTest();
        String result = LeadHandler.createLead('John', '', 'OpenAI');
        Test.stopTest();
        System.assertEquals('First and last name are required', result);
    }

    // ❌ No test for catch (Exception e) — leaves that block uncovered
}