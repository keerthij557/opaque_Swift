//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func optional<T>(_ t: T.Type) -> Optional<T>.Type
{
    return <<infer>>
}

@_transparent public func optional<T>(_ x: T) -> T?
{
    return x
}

@_transparent public func optional<T>(_ x: T!) -> T?
{
    return x
}

@_transparent public func optional<T, U>(_ f: (@escaping (T) -> U)) -> ((T?) -> U?)
{
    return { $0.map(f) }
}

@_transparent public func optional<T, U>(_ f: (@escaping (T) -> U?)) -> ((T?) -> U?)
{
    return { $0.map(f).guaranteedValue }
}

@_transparent public func optional<T, U, V>(_ f: (@escaping (T, U) -> V)) -> ((T?, U?) -> V?)
{
    return { optional(f)(compound($0, $1)) }
}

@_transparent public func optional<T, U, V>(_ f: (@escaping (T, U) -> V?)) -> ((T?, U?) -> V?)
{
    return { optional(f)(compound($0, $1)) }
}

@_transparent public func optional<T, U, V, W>(_ f: (@escaping (T, U, V) -> W)) -> ((T?, U?, V?) -> W?)
{
    return { optional(f)(compound($0, $1, $2)) }
}

@_transparent public func optional<T, U, V, W>(_ f: (@escaping (T, U, V) -> W?)) -> ((T?, U?, V?) -> W?)
{
    return { optional(f)(compound($0, $1, $2)) }
}

@_transparent public func optional<T, U, V, W, X>(_ f: (@escaping (T, U, V, W) -> X)) -> ((T?, U?, V?, W?) -> X?)
{
    return { optional(f)(compound($0, $1, $2, $3)) }
}

@_transparent public func optional<T, U, V, W, X>(_ f: (@escaping (T, U, V, W) -> X?)) -> ((T?, U?, V?, W?) -> X?)
{
    return { optional(f)(compound($0, $1, $2, $3)) }
}

@_transparent public func optional<T, U, V, W, X, Y>(_ f: (@escaping (T, U, V, W, X) -> Y)) -> ((T?, U?, V?, W?, X?) -> Y?)
{
    return { optional(f)(compound($0, $1, $2, $3, $4)) }
}

@_transparent public func optional<T, U, V, W, X, Y>(_ f: (@escaping (T, U, V, W, X) -> Y?)) -> ((T?, U?, V?, W?, X?) -> Y?)
{
    return { optional(f)(compound($0, $1, $2, $3, $4)) }
}

@_transparent public func optional<T, U, V, W, X, Y, Z>(_ f: (@escaping (T, U, V, W, X, Y) -> Z)) -> ((T?, U?, V?, W?, X?, Y?) -> Z?)
{
    return { optional(f)(compound($0, $1, $2, $3, $4, $5)) }
}

@_transparent public func optional<T, U, V, W, X, Y, Z>(_ f: (@escaping (T, U, V, W, X, Y) -> Z?)) -> ((T?, U?, V?, W?, X?, Y?) -> Z?)
{
    return { optional(f)(compound($0, $1, $2, $3, $4, $5)) }
}

@_transparent public func compulsory<T>(_ t: Optional<T>.Type) -> T.Type
{
    return <<infer>>
}

@_transparent public func compulsory<T>(_ x: T?) -> T!
{
    return x
}

@_transparent public func compulsory<T, U>(_ f: (@escaping (T?) -> U)) -> ((T) -> U)
{
    return { f($0) }
}

@_transparent public func compulsory<T, U>(_ f: (@escaping (T) -> U?)) -> ((T) -> U)
{
    return { f($0)! }
}

@_transparent public func compulsory<T, U>(_ f: (@escaping (T?) -> U?)) -> ((T) -> U)
{
    return { f($0)! }
}
