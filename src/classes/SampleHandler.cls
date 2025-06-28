public class SampleHandler {
    
    public static void checkStatus(Boolean statusFlag) {
        if (statusFlag) {
            Account acc = new Account(
                Name = 'Test Account',
                Reference_Notes__c = 'Some test note' // Make sure this is a required custom field
            );
            insert acc;
        } else {
            System.debug('No insert performed.');
        }
    }
}