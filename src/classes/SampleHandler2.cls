public class SampleHandler2 {
    
   public static void process(Boolean doInsert) {
        if (doInsert) {
            Account acc = new Account(
                Name = 'Test Account',
                Reference_Notes__c = 'Some test note' // Required field
            );
            insert acc;
        } else {
            System.debug('No insert performed.');
        }
    }
}