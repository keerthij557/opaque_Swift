//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_ImmutableAdditionOperatable
{
    func opaque_ImmutableAdditionOperatable_adding(_: Any) -> Any?
}

public protocol opaque_MutableAdditionOperatable: opaque_ImmutableAdditionOperatable
{
    mutating func opaque_MutableAdditionOperatable_add(_: Any) -> Void?
}

public protocol opaque_AdditionOperatable: opaque_ImmutableAdditionOperatable, opaque_MutableAdditionOperatable
{
    
}

public protocol opaque_ImmutableSubtractionOperatable
{
    func opaque_ImmutableSubtractionOperatable_subtracting(_: Any) -> Any?
}

public protocol opaque_MutableSubtractionOperatable: opaque_ImmutableSubtractionOperatable
{
    mutating func opaque_MutableSubtractionOperatable_subtract(_: Any) -> Void?
}

public protocol opaque_SubtractionOperatable: opaque_ImmutableSubtractionOperatable, opaque_MutableSubtractionOperatable
{
    
}

public protocol opaque_ImmutableMultiplicationOperatable
{
    func opaque_ImmutableMultiplicationOperatable_multiplying(by _: Any) -> Any?
}

public protocol opaque_MutableMultiplicationOperatable: opaque_ImmutableMultiplicationOperatable
{
    mutating func opaque_MutableMultiplicationOperatable_multiply(by _: Any) -> Void?
}

public protocol opaque_MultiplicationOperatable: opaque_ImmutableMultiplicationOperatable, opaque_MutableMultiplicationOperatable
{
    
}

public protocol opaque_ImmutableDivisionOperatable
{
    func opaque_ImmutableDivisionOperatable_dividing(by _: Any) -> Any?
}

public protocol opaque_MutableDivisionOperatable: opaque_ImmutableDivisionOperatable
{
    mutating func opaque_MutableDivisionOperatable_divide(by _: Any) -> Void?
}

public protocol opaque_DivisionOperatable: opaque_ImmutableDivisionOperatable, opaque_MutableDivisionOperatable
{
    
}

public protocol opaque_ImmutableModuloOperatable
{
    func opaque_ImmutableModuloOperatable_remainder(dividingBy value: Any) -> Any?
}

public protocol opaque_MutableModuloOperatable: opaque_ImmutableModuloOperatable
{
    mutating func opaque_MutableModuloOperatable_formRemainder(dividingBy _: Any) -> Void?
}

public protocol opaque_ModuloOperatable: opaque_ImmutableModuloOperatable, opaque_MutableModuloOperatable
{
    
}
