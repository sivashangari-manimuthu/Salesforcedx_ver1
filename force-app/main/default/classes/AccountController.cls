public with sharing class AccountController {
 @AuraEnabled
 public static List<Account> findAll() {
 return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
   FROM Account
   LIMIT 50];
  }
}
