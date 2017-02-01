//
// Copyright (c) Vatsal Manot
//

import Swift

extension Zip2Sequence
{
    @_transparent public func opaque() -> AnySequence<(Any, Any)>
    {
        return .init(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}
