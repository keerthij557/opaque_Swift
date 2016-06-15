//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Forwarder
{
    associatedtype Forwarded
    
    var forwarded: Forwarded { get }
    
    static func forward(_: Forwarded) -> Self
}

public protocol MutableForwarder: Forwarder
{
    var forwarded: Forwarded { get set }
}

extension Forwarder
{
    public static func forward(_ forwarded: Forwarded) -> Self
    {
        return unsafeBitCast(forwarded, to: Self.self)
    }
}
