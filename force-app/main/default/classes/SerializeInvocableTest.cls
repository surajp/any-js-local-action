@isTest
public with sharing class SerializeInvocableTest {
  @isTest
  public static void testSerialize() {
    Account[] acctsList = new List<Account>{};
    acctsList.add(
      new Account(name = 'Sample 1', Rating = 'Hot', Industry = 'Agriculture')
    );
    acctsList.add(
      new Account(name = 'Sample 2', Rating = 'Warm', Industry = 'Healthcare`')
    );
    String[] acctsListString = SerializeInvocable.doSerialize(
      new List<SObject[]>{ acctsList }
    );
    system.assertEquals('[{"attributes":{"type":"Account"},"Name":"Sample 1","Rating":"Hot","Industry":"Agriculture"},{"attributes":{"type":"Account"},"Name":"Sample 2","Rating":"Warm","Industry":"Healthcare`"}]',acctsListString[0]);
  }
}
