//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol OpaqueRepresentable
{
    associatedtype OpaqueRepresentation
    
    var opaqueRepresentation: OpaqueRepresentation { get }
    
    init?(opaqueRepresentation: OpaqueRepresentation)
}

extension OpaqueRepresentable
{
    public init?<T>(opaqueRepresentation opaque: T)
    {
        guard let opaque = opaque as? OpaqueRepresentation else
        {
            return nil
        }
        
        self.init(opaqueRepresentation: opaque)
    }
}
