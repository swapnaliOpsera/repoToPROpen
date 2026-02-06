public with sharing class VulnerableAccountSearch {
    // Simulate a user-provided search term
    // //test for Qualys ticket
    public static List<Account> findAccounts(String userInput) {
        // Dangerous: building query by string concatenation
        String q = 'SELECT Id, Name FROM Account WHERE Name LIKE \'%' + userInput + '%\'';
        return Database.query(q);
    }
}