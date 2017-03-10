//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol ForwardIndex: opaque_ForwardIndex, Comparable
{
    associatedtype Distance: Swift.SignedInteger = Int
    
    func successor() -> Self
}

public protocol BidirectionalIndex: opaque_BidirectionalIndex, ForwardIndex
{
    func predecessor() -> Self
}

public protocol RandomAccessIndex: opaque_RandomAccessIndex, BidirectionalIndex, Strideable2
{

}

public func - <T: RandomAccessIndex>(lhs: T, rhs: T.Stride) -> T
{
    return lhs.advanced(by: -rhs)
}

public func -= <T: RandomAccessIndex>(lhs: inout T, rhs: T.Stride)
{
    lhs.advance(by: -rhs)
}
