Integer startTime = Limits.getCpuTime();
Integer startHeap = Limits.getHeapSize(); 

String objectName = 'Account';
for(Integer i = 0; i < 500; i++) {
  SObjectType sobjType = ((SObject) Type.forName('Schema', objectName).newInstance()).getSObjectType();
  DescribeSObjectResult describeResult = sobjType.getDescribe();
}

Integer endTime = Limits.getCpuTime();
Integer endHeap = Limits.getHeapSize();

Integer timeResult = endTime - startTime;
Integer heapResult = endHeap - startHeap;
