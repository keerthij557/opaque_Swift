//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias ForwardIndexType2 = protocol<opaque_ForwardIndexType, ForwardIndexType>

public protocol opaque_ForwardIndexType
{
    func successor() -> Self
    
    func toOpaque() -> AnyForwardIndex
}

extension opaque_ForwardIndexType where Self: ForwardIndexType
{
    public func toOpaque() -> AnyForwardIndex
    {
        return .init(self)
    }
}
