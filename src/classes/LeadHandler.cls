public class LeadHandler {

    /**
     * Creates a new Lead record.
     * @param firstName First name of the lead
     * @param lastName Last name of the lead
     * @param company Company name (required by Lead object)
     * @return A message indicating success or input validation error
     */
    public static String createLead(String firstName, String lastName, String company) {
        if (String.isBlank(firstName) || String.isBlank(lastName)) {
            return 'First and last name are required';
        }

        try {
            Lead lead = new Lead(
                FirstName = firstName,
                LastName = lastName,
                Company = company
            );
            insert lead;
            return 'Lead created with Id: ' + lead.Id;
        } catch (Exception e) {
            return 'Error creating lead: ' + e.getMessage();
        }
    }
}