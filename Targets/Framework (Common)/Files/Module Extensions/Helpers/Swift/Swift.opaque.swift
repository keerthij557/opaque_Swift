//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func opaque<T>(_ t: T.Type) -> Any.Type
{
    return t
}

@_transparent public func opaque<T>(_ x: T) -> Any
{
    return x
}

@_transparent public func opaque<T, U>(_ x: (T, U)) -> (Any, Any)
{
    return (x.0, x.1)
}

@_transparent public func opaque<T, U>(_ f: (@escaping (T) -> U)) -> ((Any?) -> Any?)
{
    return { optional({ f($0) })($0 as? T) }
}

@_transparent public func opaque<T, U, V>(_ f: (@escaping (T, U) -> V)) -> ((Any?, Any?) -> Any?)
{
    return { optional(f)($0 as? T, $1 as? U) }
}

@_transparent public func opaque<T, U, V, W>(_ f: (@escaping (T, U, V) -> W)) -> ((Any?, Any?, Any?) -> Any?)
{
    return { optional(f)($0 as? T, $1 as? U, $2 as? V) }
}

@_transparent public func opaque<T, U, V, W, X>(_ f: (@escaping (T, U, V, W) -> X)) -> ((Any?, Any?, Any?, Any?) -> Any?)
{
    return { optional(f)($0 as? T, $1 as? U, $2 as? V, $3 as? W) }
}

@_transparent public func opaque<T, U, V, W, X, Y>(_ f: (@escaping (T, U, V, W, X) -> Y)) -> ((Any?, Any?, Any?, Any?, Any?) -> Any?)
{
    return { optional(f)($0 as? T, $1 as? U, $2 as? V, $3 as? W, $4 as? X) }
}

@_transparent public func opaque<T, U, V, W, X, Y, Z>(_ f: (@escaping (T, U, V, W, X, Y) -> Z)) -> ((Any?, Any?, Any?, Any?, Any?, Any?) -> Any?)
{
    return { optional(f)($0 as? T, $1 as? U, $2 as? V, $3 as? W, $4 as? X, $5 as? Y) }
}

@_transparent public func transparent<T>(_ t: Any.Type) -> T.Type
{
    return t as! T.Type
}

@_transparent public func transparent<T>(_ x: Any?) -> T
{
    return x as! T
}

@_transparent public func transparent<T, U>(_ f: (@escaping (Any?) -> Any?)) -> ((T) -> U)
{
    return { f($0) as! U }
}

@_transparent public func transparent<T, U, V>(_ f: (@escaping (Any?, Any?) -> Any?)) -> ((T, U) -> V)
{
    return { f($0, $1) as! V }
}

@_transparent public func transparent<T, U, V, W>(_ f: (@escaping (Any?, Any?, Any?) -> Any?)) -> ((T, U, V) -> W)
{
    return { f($0, $1, $2) as! W }
}

@_transparent public func transparent<T, U, V, W, X>(_ f: (@escaping (Any?, Any?, Any?, Any?) -> Any?)) -> ((T, U, V, W) -> X)
{
    return { f($0, $1, $2, $3) as! X }
}

@_transparent public func transparent<T, U, V, W, X, Y>(_ f: (@escaping (Any?, Any?, Any?, Any?, Any?) -> Any?)) -> ((T, U, V, W, X) -> Y)
{
    return { f($0, $1, $2, $3, $4) as! Y }
}

@_transparent public func transparent<T, U, V, W, X, Y, Z>(_ f: (@escaping (Any?, Any?, Any?, Any?, Any?, Any?) -> Any?)) -> ((T, U, V, W, X, Y) -> Z)
{
    return { f($0, $1, $2, $3, $4, $5) as! Z }
}
