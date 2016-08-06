//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Integer2 = opaque_Integer & Integer

public protocol opaque_Integer: opaque_Comparable, opaque_Hashable, opaque_IntegerArithmetic, opaque_ExpressibleByIntegerLiteral, CustomStringConvertible
{
    
}
