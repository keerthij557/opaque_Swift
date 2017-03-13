//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol OpaqueRepresentable
{
    associatedtype OpaqueRepresentation
    
    var opaque: OpaqueRepresentation { get }
    
    init(opaque: OpaqueRepresentation)
}
