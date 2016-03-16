//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias ForwardIndexType2 = protocol<_ForwardIndexType, ForwardIndexType>

public protocol _ForwardIndexType
{
    func successor() -> Self
    
    func toOpaque() -> AnyForwardIndex
}

extension _ForwardIndexType where Self: ForwardIndexType
{
    public func toOpaque() -> AnyForwardIndex
    {
        return AnyForwardIndex(self)
    }
}
