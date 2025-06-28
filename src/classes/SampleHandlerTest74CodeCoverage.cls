@isTest
private class SampleHandlerTest74CodeCoverage {
        
            @isTest
            static void testTrueBranchOnly() {
                // This test will execute only the 'if' block
                SampleHandler2.process(true);
            }
        
            // We do NOT test the 'else' block → 1 line remains uncovered
        }