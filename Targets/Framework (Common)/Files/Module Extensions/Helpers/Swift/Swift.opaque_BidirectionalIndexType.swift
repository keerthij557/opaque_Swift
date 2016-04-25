//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias BidirectionalIndexType2 = protocol<opaque_BidirectionalIndexType, BidirectionalIndexType>

public protocol opaque_BidirectionalIndexType: opaque_ForwardIndexType
{
    func predecessor() -> Self

    func toOpaque() -> AnyBidirectionalIndex
}

extension opaque_BidirectionalIndexType where Self: BidirectionalIndexType
{
    public func toOpaque() -> AnyBidirectionalIndex
    {
        return .init(self)
    }
}
