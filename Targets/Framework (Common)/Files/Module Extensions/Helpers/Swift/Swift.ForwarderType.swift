//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol ForwarderType
{
    associatedtype Forwarded
    
    var forwarded: Forwarded { get }
    
    static func forward(_: Forwarded) -> Self
}

public protocol MutableForwarderType: ForwarderType
{
    var forwarded: Forwarded { get set }
}

extension ForwarderType
{
    public static func forward(forwarded: Forwarded) -> Self
    {
        return unsafeBitCast(forwarded, Self.self)
    }
}
