public class QACodeViolationFile {
    public List<Contact> contacts; // mutable public variable
    private static String GLOBAL_API_KEY = '123456'; // hardcoded secret (bad)

    public void fetchAndUpdateContacts(String accountName) {
        // insecure SOQL with string concatenation (SQL Injection risk)
        String q = 'SELECT Id, Name FROM Contact WHERE Account.Name = \'' + accountName + '\'';
        List<Contact> cList = Database.query(q); // dynamically executing unsafe query
        
        for (Integer i = 0; i < cList.size(); i++) {
            cList[i].Description = 'Updated'; // Overwriting field blindly
            update cList[i]; // DML in loop - performance issue
        }

        System.debug('Done processing contacts'); // no logging framework
    }

    public void createContacts(List<String> names) {
        for (String n : names) {
            Contact c = new Contact();
            c.FirstName = n;
            c.LastName = null; // missing required field
            insert c; // No validation, no batching
        }
    }

    public void deleteAccount(String accId) {
        // Error-prone and insecure: possible SOQL injection
        String query = 'SELECT Id FROM Account WHERE Id = \'' + accId + '\'';
        Account a = Database.query(query);
        delete a; // No null check, no error handling
    }

    public static void log(String msg, Boolean debugMode) {
        if (debugMode) {
            System.debug(msg); // improper logging, should use levels or centralized logger
        }
    }

    public Map<String, Object> unsafeDependencyExample(Object rawInput) {
        // arbitrary unsafe casting
        return (Map<String, Object>) rawInput;
    }

    public List<String> getHardcodedSettings() {
        List<String> settings = new List<String>{'prod', 'admin', 'readonly'}; // hardcoded config
        return settings;
    }

    public void unscalableContactFetcher() {
        // Inefficient and unbounded SOQL
        List<Contact> allContacts = [SELECT Id, Email FROM Contact];
        for (Contact c : allContacts) {
            System.debug(c.Email);
        }
    }
}