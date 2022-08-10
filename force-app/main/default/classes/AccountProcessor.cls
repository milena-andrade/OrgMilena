public class AccountProcessor {
    @future
    public static void countContacts(list<Id> listId){
        
        List<Account> lstAccount =[Select Id,Number_Of_Contacts__c,
                                	(Select Id from Contacts) 
                                		FROM Account where Id IN :listId];
        for(Account acc : lstAccount){
            List<Contact>lstContact = acc.Contacts;
            acc.Number_Of_Contacts__c = lstContact.size();
        }
        update lstAccount;        
    }
}