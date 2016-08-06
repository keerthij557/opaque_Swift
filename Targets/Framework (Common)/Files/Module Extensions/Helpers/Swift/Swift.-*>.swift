//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -*>

public prefix func -*> <T, U>(rhs: T) -> U
{
    return unsafeBitCast(rhs, to: U.self)
}
