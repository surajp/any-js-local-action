/**
  Deserialize collection of records
  @author Suraj Pillai
**/
public with sharing class DeserializeInvocable {
  @InvocableMethod(
    label='Deserialize'
    description='Deserialize SObject Collection'
  )
  public static List<SObject[]> deserialize(List<String> recordsArrayStr) {
    List<SObject[]> opArray = new List<SObject[]>();
    for (String record : recordsArrayStr) {
      opArray.add((SObject[]) JSON.deserialize(record, List<SObject>.class));
    }
    return opArray;
  }
}
