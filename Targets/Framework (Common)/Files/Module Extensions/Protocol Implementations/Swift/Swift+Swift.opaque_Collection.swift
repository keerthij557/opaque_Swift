//
// Copyright (c) Vatsal Manot
//

import Swift

// MARK: - Swift.opaque_Collection -

extension AnyBidirectionalCollection: opaque_Collection
{
    
}

extension Dictionary: opaque_Collection
{
    
}

extension Set: opaque_Collection
{
    
}

// MARK: - Swift.opaque_Collection & Swift.opaque_RandomAccessCollection -

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
