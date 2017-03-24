//
// Copyright (c) Vatsal Manot
//

import Swift

extension BidirectionalCollection
{
    public func lazyReversed() -> ReversedCollection<Self>
    {
        return reversed()
    }
}
