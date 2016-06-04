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

var equatable: _Equatable

equatable = integer

equatable.opaque_RangeReplaceableCollectionType_isEqualTo(float) // returns nil, because Int.Type != Float.Type
equatable.opaque_RangeReplaceableCollectionType_isEqualTo(1) // returns true
equatable.opaque_RangeReplaceableCollectionType_isEqualTo(2) // returns false
```

Here is a more complex example of how you can flatten a recursive sequence of arbitrary depth (provided that the sequence and it's subsequences' generators conform to `_GeneratorType`):

```
public struct GeneratorOnly<G: GeneratorType>: GeneratorType2
{
    public typealias Value = G
    
    public private(set) var value: Value
    
    public init(_ value: Value)
    {
        self.value = value
    }
    
    public mutating func next() -> G.Element?
    {
        return value.next()
    }
}

public struct FlatSequenceGenerator<G: GeneratorType, T>: GeneratorType2
{
    public var value: G
    {
        return (workstack.first! as! GeneratorOnly<G>).value
    }
    
    public init(_ value: G)
    {
        self.workstack = [GeneratorOnly(value)]
    }
    
    private var workstack: [opaque_GeneratorType] = []
    
    public mutating func next() -> T?
    {
        workstackLoop: while !workstack.isEmpty
        {
            while let element = workstack[workstack.endIndex - 1].opaque_GeneratorType_next()
            {
                if element.dynamicType != T.self
                {
                    if let element = element as? opaque_SequenceType
                    {
                        workstack.append(element.opaque_SequenceType_generate())
                        
                        continue workstackLoop
                    }
                }
                
                if let element = element as? T
                {
                    return element
                }
                
                continue
            }
            
            if workstack.count == 1
            {
                return nil
            }
                
            else
            {
                workstack.removeLast()
            }
        }
        
        return nil
    }
}

public struct FlatSequence<S: SequenceType, T>: SequenceType2
{
    public private(set) var value: S
    
    public init(_ value: S)
    {
        self.value = value
    }
    
    public func generate() -> FlatSequenceGenerator<S.Generator, T>
    {
        return FlatSequenceGenerator(value.generate())
    }
}


var x = [1, 2, [3, 4, [5, 6, [7, [8, [9]], [10], 11], 12], 13], [14, 15, [16]]]

Array(FlatSequence<[NSObject], Int>(x)) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
```
