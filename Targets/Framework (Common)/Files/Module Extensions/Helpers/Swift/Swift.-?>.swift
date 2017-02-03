//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -?>

public prefix func -?> <T, U>(rhs: T) -> U?
{
    return (rhs as? U) ?? (rhs as? opaque_Optional)?.opaque_Optional_flattening().flatMap({ $0 as? U })
}

public prefix func -?> <T, U>(rhs: T?) -> U?
{
    return rhs.flatMap(-?>)
}
