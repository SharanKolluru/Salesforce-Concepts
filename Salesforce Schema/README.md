## Schema.getGlobalDescribe()
```
Integer startTime = Limits.getCpuTime();
Integer startHeap = Limits.getHeapSize(); 

String objectName = 'Account'; 
Map<String, Schema.SObjectType> gd = Schema.getGlobalDescribe();
for(Integer i = 0; i < 500; i++) {    
  Schema.SObjectType sobjType = gd.get(objectName);    
  Schema.DescribeSObjectResult describeResult = sobjType.getDescribe();
}

Integer endTime = Limits.getCpuTime();
Integer endHeap = Limits.getHeapSize();

Integer timeResult = endTime - startTime;
Integer heapResult = endHeap - startHeap;
```
## Schema.describeSObjects()
```
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

```
## Type.forName()
```
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

```
