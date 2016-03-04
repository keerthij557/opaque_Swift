# OpaqueSwift
Type-erasure for certain generic constructs in the Swift standard library.

OpaqueSwift exposes otherwise generic/associated-type-dependent functionality via opaque interfaces. All exposed functions/properties return opaque values, wrapped as optionals where necessary (i.e. for scenarios the operation might fail).

For example:

```
var floats: [Float] = [1.0, 2.0, 3.0]
var integers: [Int] = [3, 2, 1]

var collection: _RangeReplaceableCollectionType

collection = floats

collection._append(1) // returns nil (i.e. fails), because 1 is an integer
collection._append(1.0) // returns () (i.e. succeeds)
collection._removeFirst() // returns () 

collection = integers

collection._append(1) // returns ()
collection._append(1.0) // returns nil, because 1.0 is a Float
collection._removeFirst()
```

or:

```
var float: Float = 1.0
var integer: Int = 1

var equatable: _Equatable

equatable = integer

equatable._isEqualTo(float) // returns nil, because Int.Type != Float.Type
equatable._isEqualTo(1) // returns true
equatable._isEqualTo(2) // returns false
```
