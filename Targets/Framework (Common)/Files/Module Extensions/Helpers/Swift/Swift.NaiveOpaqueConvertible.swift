//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol AnyConvertible
{
    var anyValue: Any { get }
    
    init?(anyValue: Any)
}
