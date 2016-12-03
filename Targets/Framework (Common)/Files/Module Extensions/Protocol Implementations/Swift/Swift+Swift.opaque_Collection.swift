//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyBidirectionalCollection: opaque_Collection
{
    
}

extension AnyRandomAccessCollection: opaque_Collection, opaque_RandomAccessCollection
{
    
}

extension Array: opaque_MutableCollection, opaque_RandomAccessCollection
{
    
}

extension ArraySlice: opaque_MutableCollection, opaque_RandomAccessCollection
{
    
}

extension ContiguousArray: opaque_MutableCollection, opaque_RandomAccessCollection
{
    
}

extension Dictionary: opaque_Collection
{
    
}

extension Set: opaque_Collection
{
    
}
