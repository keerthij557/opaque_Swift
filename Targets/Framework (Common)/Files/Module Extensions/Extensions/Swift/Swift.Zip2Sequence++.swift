//
// Copyright (c) Vatsal Manot
//

import Swift

extension Zip2Sequence
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return .init(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}
