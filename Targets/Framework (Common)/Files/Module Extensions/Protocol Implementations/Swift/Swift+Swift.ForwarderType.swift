//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyBidirectionalCollection: ForwarderType
{
    public typealias Forwarded = _CollectionType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyBidirectionalCollection
    {
        return forwarded._toAnyBidirectionalCollection() as! AnyBidirectionalCollection
    }
}

extension AnyBidirectionalIndex: ForwarderType
{
    public typealias Forwarded = _BidirectionalIndexType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyBidirectionalIndex
    {
        return forwarded.toOpaque()
    }
}

extension AnyForwardCollection: ForwarderType
{
    public typealias Forwarded = _CollectionType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyForwardCollection
    {
        return forwarded._toAnyRandomAccessCollection() as! AnyForwardCollection
    }
}

extension AnyForwardIndex: ForwarderType
{
    public typealias Forwarded = _ForwardIndexType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyForwardIndex
    {
        return forwarded.toOpaque()
    }
}

extension AnyGenerator: ForwarderType
{
    public typealias Forwarded = _GeneratorType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyGenerator
    {
        return forwarded._toAnyGenerator() as! AnyGenerator
    }
}

extension AnyRandomAccessCollection: ForwarderType
{
    public typealias Forwarded = _CollectionType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyRandomAccessCollection
    {
        return forwarded._toAnyRandomAccessCollection() as! AnyRandomAccessCollection
    }
}

extension AnyRandomAccessIndex: ForwarderType
{
    public typealias Forwarded = _RandomAccessIndexType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnyRandomAccessIndex
    {
        return forwarded.toOpaque()
    }
}

extension AnySequence: ForwarderType
{
    public typealias Forwarded = _SequenceType
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(forwarded: Forwarded) -> AnySequence
    {
        return forwarded._toAnySequence() as! AnySequence
    }
}
