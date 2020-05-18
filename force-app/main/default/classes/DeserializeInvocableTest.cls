@isTest
public with sharing class DeserializeInvocableTest {
  @isTest
  public static void testDeserialize() {
    String[] acctStringArray = new List<String>{
      '[{"attributes":{"type":"Account"},"Name":"Sample 1","Rating":"Hot","Industry":"Agriculture"},{"attributes":{"type":"Account"},"Name":"Sample 2","Rating":"Warm","Industry":"Healthcare"}]'
    };
    List<SObject[]> sobjectListArray = DeserializeInvocable.deserialize(
      acctStringArray
    );
    Account[] acctsList = (Account[]) sobjectListArray[0];
    system.assertEquals(2, acctsList.size());
    system.assertEquals('Sample 1', acctsList[0].Name);
    system.assertEquals('Agriculture', acctsList[0].Industry);
    system.assertEquals('Healthcare', acctsList[1].Industry);
    system.assertEquals('Sample 2', acctsList[1].Name);
  }
}
