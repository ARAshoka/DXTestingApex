public with sharing class ApexTwoController {
 @AuraEnabled
 public static List<Account> findAll() {
 //comment by Ashok
 return [SELECT Id, Name, Location__Latitude__s, Location__Longitude__s
   FROM Account
   WHERE Location__Latitude__s != NULL AND Location__Longitude__s !=
          NULL
   LIMIT 50];
  }
}