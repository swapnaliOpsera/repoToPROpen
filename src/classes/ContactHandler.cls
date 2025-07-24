public class ContactHandler {
// Demo of Queuing

    /**
     * Creates a Contact record with provided details.
     * @param firstName First name of the contact
     * @param lastName Last name of the contact
     * @param email Email of the contact
     * @return Result message or error message es
     */
    public static String createContact(String firstName, String lastName, String email) {
        if (String.isBlank(firstName) || String.isBlank(lastName)) {
            return 'First and last name are required';
        }

        try {
            Contact con = new Contact(
                FirstName = firstName,
                LastName = lastName,
                Email = email
            );
            insert con;
            return 'Contact created with Id: ' + con.Id;
        } catch (DmlException e) {
            return 'Error creating contact: ' + e.getMessage();
        }
    }
}