//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Forwarder: CommonProtocol
{
    associatedtype Forwarded
    
    var forwarded: Forwarded { get }
    
    static func forward(_: Forwarded) -> Self
}

public protocol MutableForwarder: Forwarder
{
    var forwarded: Forwarded { get set }
}
