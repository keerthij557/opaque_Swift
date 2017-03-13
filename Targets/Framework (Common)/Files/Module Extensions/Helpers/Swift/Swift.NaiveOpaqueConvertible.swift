//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol NaiveOpaqueConvertible
{
    var naiveOpaque: Any { get }
    
    init?(naiveOpaque: Any)
}
