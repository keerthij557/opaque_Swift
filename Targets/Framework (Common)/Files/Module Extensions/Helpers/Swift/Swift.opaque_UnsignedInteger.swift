//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias UnsignedInteger2 = opaque_UnsignedInteger & UnsignedInteger

public protocol opaque_UnsignedInteger: opaque_Integer
{
    func toUIntMax() -> UIntMax
    init(_: UIntMax)

    func advanced(by _: Int) -> Self
}
