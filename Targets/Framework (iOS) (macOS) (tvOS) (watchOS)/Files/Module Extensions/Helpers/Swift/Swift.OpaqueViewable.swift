//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol OpaqueViewable
{
    associatedtype OpaqueView
    
    var opaqueView: OpaqueView { get }
}
