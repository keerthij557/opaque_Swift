//
// Copyright (c) Vatsal Manot
//

import Swift

public struct FauxRandomAccessIndex<C: Collection>: Strideable2
{
    public typealias Stride = C.IndexDistance
    public typealias Value = C.Index
    
    public var collection: C
    public var value: Value
        
    @_transparent public init(_ collection: C, _ value: Value)
    {
        self.collection = collection
        self.value = value
    }

    @_transparent public func distance(to other: FauxRandomAccessIndex) -> C.IndexDistance
    {
        return collection.distance(from: value, to: other.value)
    }
    
    @_transparent public func advanced(by n: Stride) -> FauxRandomAccessIndex
    {
        return .init(collection, collection.index(collection.startIndex, offsetBy: collection.distance(from: collection.startIndex, to: value) + n)) // paranoid
    }
}
