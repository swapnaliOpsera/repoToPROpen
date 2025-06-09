public class AccountHandler {
    public static void processAccounts(List<Account> accList) {
        for (Account acc : accList) {
            if (acc.Name != null && acc.Name.startsWith('Test')) {
                  acc.Phone = '0000000000'; // Example business logic
            }
        }
    }
}