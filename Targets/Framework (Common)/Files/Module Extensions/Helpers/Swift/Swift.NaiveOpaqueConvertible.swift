//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol NaiveOpaqueConvertible
{
    init?(opaque: Any)

    func opaque() -> Any
}
