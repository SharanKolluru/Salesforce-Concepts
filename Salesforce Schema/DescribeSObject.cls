Integer startTime = Limits.getCpuTime();
Integer startHeap = Limits.getHeapSize(); 

String objectName = 'Account';
String[] types = new List<String>{ objectName };
for(Integer i = 0; i < 500; i++) {
  List<Schema.DescribeSobjectResult> describeResults = Schema.describeSObjects(types);
}

Integer endTime = Limits.getCpuTime();
Integer endHeap = Limits.getHeapSize();

Integer timeResult = endTime - startTime;
Integer heapResult = endHeap - startHeap;

