//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol NaiveOpaqueConvertible
{
    init?(naiveOpaque: Any)

    func toNaiveOpaque() -> Any
}
