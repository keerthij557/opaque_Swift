//
// Copyright (c) Vatsal Manot
//

import Swift

prefix operator -?>

public prefix func -?> <T, U>(rhs: T) -> U?
{
    return rhs as? U
}

public prefix func -?> <T>(rhs: opaque_Sequence) -> AnySequence<T>?
{
    return rhs.opaque_Sequence_toAnySequence() as? AnySequence
}

public prefix func -?> <T, U>(rhs: T) -> AnySequence<U>?
{
    return (-?>rhs).flatMap(-?>)
}
