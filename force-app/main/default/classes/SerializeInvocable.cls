/**
  Serialize Record Collection
  @author Suraj Pillai
**/
public with sharing class SerializeInvocable {
  @InvocableMethod(label='Serialize' description='Serialize SObjec')
  public static List<String> doSerialize(List<SObject[]> sobjectArrays) {
    String[] arraysList = new List<String>{};
    for (SObject[] recArr : sobjectArrays) {
      arraysList.add(JSON.serialize(recArr));
    }
    return arraysList;
  }
}
