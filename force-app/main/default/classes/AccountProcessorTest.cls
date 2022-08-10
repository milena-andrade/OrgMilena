@IsTest
public class AccountProcessorTest {
@IsTest    
    public static void testAccountProcessor(){
        Account a = new Account();
        a.Name = 'Test Account';
        insert a;
    
    	Contact cont = new Contact();
        cont.FirstName = 'Milena';
        cont.LastName  = 'Andrade';
        cont.AccountId = a.Id;
        insert cont;
        
        
        List<Id> listAccIdd = new List<Id>();
        listAccIdd.add(a.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(listAccIdd);
    	Test.StopTest();
        
        Account acc2 = [SELECT Number_Of_Contacts__c FROM Account WHERE Id =: a.Id LIMIT 1];
        System.assertEquals(Integer.valueOf(acc2.Number_Of_Contacts__c),1);
    }
}