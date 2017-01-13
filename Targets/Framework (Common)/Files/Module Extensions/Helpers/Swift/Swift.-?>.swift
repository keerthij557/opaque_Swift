//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -?>

public prefix func -?> <T, U>(rhs: T) -> U?
{
    return rhs as? U
}

public prefix func -?> <T, U>(rhs: T?) -> U?
{
    return rhs.flatMap(-?>)
}
