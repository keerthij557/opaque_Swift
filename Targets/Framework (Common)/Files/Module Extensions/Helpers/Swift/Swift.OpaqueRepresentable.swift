//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol OpaqueRepresentable
{
    associatedtype OpaqueRepresentation
    
    var opaque: OpaqueRepresentation { get }
    
    init?(opaque: OpaqueRepresentation)
}

extension OpaqueRepresentable
{
    public init?<T>(opaque: T)
    {
        guard let opaque = opaque as? OpaqueRepresentation else
        {
            return nil
        }
        
        self.init(opaque: opaque)
    }
}
