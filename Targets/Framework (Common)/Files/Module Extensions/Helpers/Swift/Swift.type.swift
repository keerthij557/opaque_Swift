//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func type<T>(_ t: T.Type) -> T.Type
{
    return T.self
}

prefix operator <<

public prefix func << <T>(x: ((Void) -> T)) -> T
{
    return x()
}

postfix operator >>

public postfix func >> <T>(x: T) -> T
{
    return x
}

public func infer<T>() -> T.Type
{
    return T.self
}

@_transparent public func ftype<T, U>(_: (T, U).Type = <<infer>>) -> ((T) -> U).Type
{
    return <<infer>>
}

@_transparent public func metatype<T>(from t: T.Type) -> T.Type.Type
{
    return <<infer>>
}

@_transparent public func metatype<T>(of x: T) -> T.Type.Type
{
    return <<infer>>
}
