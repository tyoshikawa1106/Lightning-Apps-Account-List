public with sharing class AccountListCmpController {
    
    public AccountListCmpController() {
        
    }
    
    @AuraEnabled
    public static List<Account> getAccounts() {
        return [
            SELECT
                 Id
                ,Name
                ,AccountNumber
                ,Site
                ,Phone
                ,NumberOfEmployees
            FROM
                Account
            ORDER BY Name ASC
            LIMIT 200
        ];
    }
}