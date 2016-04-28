# OpaqueSwift
Type-erasure for certain generic constructs in the Swift standard library.

OpaqueSwift exposes otherwise generic/associated-type-dependent functionality via opaque interfaces. All exposed functions/properties return opaque values, wrapped as optionals where necessary (i.e. for scenarios the operation might fail).

For example:

```
var floats: [Float] = [1.0, 2.0, 3.0]
var integers: [Int] = [3, 2, 1]

var collection: opaque_RangeReplaceableCollectionType

collection = floats

collection.opaque_RangeReplaceableCollectionType_append(1) // returns nil (i.e. fails), because 1 is an integer
collection.opaque_RangeReplaceableCollectionType_append(1.0) // returns () (i.e. succeeds)
collection.opaque_RangeReplaceableCollectionType_removeFirst() // returns ()

collection = integers

collection.opaque_RangeReplaceableCollectionType_append(1) // returns ()
collection.opaque_RangeReplaceableCollectionType_append(1.0) // returns nil, because 1.0 is a Float
collection.opaque_RangeReplaceableCollectionType_removeFirst()
```

or:

```
var float: Float = 1.0
var integer: Int = 1

var equatable: opaque_Equatable

equatable = integer

equatable.opaque_Equatable_isEqualTo(float) // returns nil, because Int.Type != Float.Type
equatable.opaque_Equatable_isEqualTo(1) // returns true
equatable.opaque_Equatable_isEqualTo(2) // returns false
```
