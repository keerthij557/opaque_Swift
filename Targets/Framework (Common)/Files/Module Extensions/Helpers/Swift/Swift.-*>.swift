//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -*>

@_transparent public prefix func -*> <T, U>(rhs: T) -> U
{
    return unsafeBitCast(rhs, to: U.self)
}
