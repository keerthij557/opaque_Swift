//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyBidirectionalCollection: MutableForwarderType
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

extension AnyBidirectionalIndex: MutableForwarderType
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

extension AnyForwardCollection: MutableForwarderType
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

extension AnyForwardIndex: MutableForwarderType
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

extension AnyGenerator: MutableForwarderType
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

extension AnyRandomAccessCollection: MutableForwarderType
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

extension AnyRandomAccessIndex: MutableForwarderType
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

extension AnySequence: MutableForwarderType
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
