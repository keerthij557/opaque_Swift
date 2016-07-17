//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Integer2 = protocol<opaque_Integer, Integer>

public protocol opaque_Integer: opaque_Comparable, opaque_Hashable, opaque_IntegerArithmetic, opaque_IntegerLiteralConvertible, CustomStringConvertible
{
    
}
