public class SampleHandlerCodeCoverage {
    
    public static void process(Boolean doInsert) {
        if (doInsert) {
            Account acc = new Account(Name = 'Test Account');
            insert acc;
        } else {
            System.debug('No insert performed.');
        }
         // This line will NOT be covered → keeps coverage at 75%
        if (Test.isRunningTest() && false) {
            System.debug('Uncovered test-only block');
        }
    
    }
}