@isTest
private class SampleHandlerTest50Codecoverage {
    
   // @isTest
   // static void testProcessFalse() {
        // Only runs the else block => 50% code coverage
   //     SampleHandlerCodeCoverage.process(false);
   // }
    
     @isTest
    static void testIfBlock() {
        // Covers the 'if' branch
        SampleHandlerCodeCoverage.process(true);
    }

    @isTest
    static void testElseBlock() {
        // Covers the 'else' branch
        SampleHandlerCodeCoverage.process(false);
    }
}