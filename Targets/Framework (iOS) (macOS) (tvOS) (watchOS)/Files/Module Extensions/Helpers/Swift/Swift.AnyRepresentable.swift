//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol AnyRepresentable
{
    var anyValue: Any { get }
    
    init?(anyValue: Any)
}
