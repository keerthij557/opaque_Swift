//
// Copyright (c) Vatsal Manot
//

import Foundation
import Swift

@_transparent public func ~= <T>(lhs: T.Type, rhs: Any.Type) -> Bool
{
    return rhs is T.Type
}

@_transparent public func ~= <T>(lhs: Any.Type, rhs: T.Type) -> Bool
{
    return lhs is T.Type
}

@_transparent public func ~= <T, U>(lhs: T.Type, rhs: U.Type) -> Bool
{
    return lhs is U.Type
}

@_transparent public func ~= (lhs: Any.Type, rhs: AnyObject.Type) -> Bool
{
    return lhs is AnyObject.Type
}
