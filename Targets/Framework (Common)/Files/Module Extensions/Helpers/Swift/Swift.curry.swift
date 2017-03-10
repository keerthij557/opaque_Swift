//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func curry<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> U)
{
    return { x in f(x) }
}

@_transparent public func curry<T, U, V>(_ f: (@escaping (T, U) -> V)) -> ((T) -> ((U) -> V))
{
    return { x in { f(x, $0) } }
}

@_transparent public func curry<T, U, V, W>(_ f: (@escaping (T, U, V) -> W)) -> ((T) -> ((U) -> ((V) -> W)))
{
    return { x in curry({ f(x, $0, $1) }) }
}

@_transparent public func curry<T, U, V, W, X>(_ f: (@escaping (T, U, V, W) -> X)) -> ((T) -> ((U) -> ((V) -> ((W) -> X))))
{
    return { x in curry({ f(x, $0, $1, $2) }) }
}

@_transparent public func curry<T, U, V, W, X, Y>(_ f: (@escaping (T, U, V, W, X) -> Y)) -> ((T) -> ((U) -> ((V) -> ((W) -> ((X) -> Y)))))
{
    return { x in curry({ f(x, $0, $1, $2, $3) }) }
}

@_transparent public func curry<T, U, V, W, X, Y, Z>(_ f: (@escaping (T, U, V, W, X, Y) -> Z)) -> ((T) -> ((U) -> ((V) -> ((W) -> ((X) -> ((Y) -> Z))))))
{
    return { x in curry({ f(x, $0, $1, $2, $3, $4) }) }
}

@_transparent public func decurry<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> U)
{
    return { f($0) }
}

@_transparent public func decurry<T, U, V>(_ f: (@escaping (T) -> ((U) -> V))) -> ((T, U) -> V)
{
    return { f($0)($1) }
}

@_transparent public func decurry<T, U, V, W>(_ f: (@escaping (T) -> ((U) -> ((V) -> W)))) -> ((T, U, V) -> W)
{
    return { f($0)($1)($2) }
}

@_transparent public func decurry<T, U, V, W, X>(_ f: (@escaping (T) -> ((U) -> ((V) -> ((W) -> X))))) -> ((T, U, V, W) -> X)
{
    return { f($0)($1)($2)($3) }
}

@_transparent public func decurry<T, U, V, W, X, Y>(_ f: (@escaping (T) -> ((U) -> ((V) -> ((W) -> ((X) -> Y)))))) -> ((T, U, V, W, X) -> Y)
{
    return { f($0)($1)($2)($3)($4) }
}

@_transparent public func decurry<T, U, V, W, X, Y, Z>(_ f: (@escaping (T) -> ((U) -> ((V) -> ((W) -> ((X) -> ((Y) -> Z))))))) -> ((T, U, V, W, X, Y) -> Z)
{
    return { f($0)($1)($2)($3)($4)($5) }
}
