//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias BidirectionalIndexType2 = protocol<_BidirectionalIndexType, BidirectionalIndexType>

public protocol _BidirectionalIndexType: _ForwardIndexType
{
    func predecessor() -> Self

    func toOpaque() -> AnyBidirectionalIndex
}

extension _BidirectionalIndexType where Self: BidirectionalIndexType
{
    public func toOpaque() -> AnyBidirectionalIndex
    {
        return .init(self)
    }
}
