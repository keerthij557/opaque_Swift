//
// Copyright (c) Vatsal Manot
//

import Swift

// MARK: - Countable -

extension AnyCollection: Countable
{
    
}

extension AnyBidirectionalCollection: Countable
{
    
}

extension AnyRandomAccessCollection: Countable
{
    
}

// MARK: - NaivelyCountable -

extension Array: NaivelyCountable
{
    
}

extension ArraySlice: NaivelyCountable
{
    
}

extension CollectionOfOne: NaivelyCountable
{
    
}

extension ContiguousArray: NaivelyCountable
{
    
}

extension Dictionary: NaivelyCountable
{
    
}

extension EmptyCollection: NaivelyCountable
{
    
}

extension Repeated: NaivelyCountable
{
    
}

extension Set: NaivelyCountable
{
    
}

extension String: NaivelyCountable
{
    public var count: Int
    {
        return characters.count
    }
}

extension String.CharacterView: NaivelyCountable
{
    
}

extension String.UnicodeScalarView: NaivelyCountable
{
    
}

extension UnsafeBufferPointer: NaivelyCountable
{
    
}

extension UnsafeMutableBufferPointer: NaivelyCountable
{
    
}
