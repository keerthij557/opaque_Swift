//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_RandomAccessIndex: opaque_BidirectionalIndex
{
    func opaque_RandomAccessIndex_advanced(by n: Any) -> Self?
    func opaque_RandomAccessIndex_distance(to other: Any) -> opaque_SignedInteger?
}

extension opaque_RandomAccessIndex where Self: opaque_Strideable
{
    public func opaque_RandomAccessIndex_advanced(by n: Any) -> Self?
    {
        return opaque_Strideable_advanced(by: n)
    }
    
    public func opaque_RandomAccessIndex_distance(to other: Any) -> opaque_SignedInteger?
    {
        return -!>opaque_Strideable_distance(to: other)
    }
}
