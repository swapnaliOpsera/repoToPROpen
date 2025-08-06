public class AccountTriggerHandler {
      public static void updateDescription(List<Account> accounts) {
        List<Account> accountsToUpdate = new List<Account>();
        for (Account acc : accounts) {
            // Example: only update if Description is blank
            if (String.isBlank(acc.Description)) {
                Account updatedAcc = new Account(
                    Id = acc.Id,
                    Description = 'Created by Trigger'
                );
                accountsToUpdate.add(updatedAcc);
            }
        }
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}