public class ContactAndLeadSearch {
    public static List<List< sObject>> searchContactsAndLeads(String lastName){
        List<List< sObject>> cttLeadList = [FIND :lastName IN ALL FIELDS 
                                            RETURNING Contact(Name), Lead(Name)];
        return cttLeadList;
    }

}