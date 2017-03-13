//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: OpaqueViewable
{
    public typealias OpaqueView = AnySequence<Any>
    
    public var opaqueView: OpaqueView
    {
        return AnySequence<Any>(lazy.map({ $0 as Any }))
    }
}

extension Optional: OpaqueViewable
{
    public typealias OpaqueView = Optional<Any>
    
    public var opaqueView: OpaqueView
    {
        return flatMap((Any?).init)
    }
}

extension Zip2Sequence: OpaqueViewable
{
    public typealias OpaqueView = AnySequence<(Any, Any)>
    
    public var opaqueView: OpaqueView
    {
        return .init(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}
