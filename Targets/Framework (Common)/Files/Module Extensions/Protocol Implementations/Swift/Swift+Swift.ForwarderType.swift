//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyBidirectionalCollection: MutableForwarderType
{
    public typealias Forwarded = opaque_CollectionType
    
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
        return forwarded.opaque_CollectionType_toAnyBidirectionalCollection() as! AnyBidirectionalCollection
    }
}

extension AnyBidirectionalIndex: MutableForwarderType
{
    public typealias Forwarded = opaque_BidirectionalIndexType
    
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
    public typealias Forwarded = opaque_CollectionType
    
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
        return forwarded.opaque_CollectionType_toAnyRandomAccessCollection() as! AnyForwardCollection
    }
}

extension AnyForwardIndex: MutableForwarderType
{
    public typealias Forwarded = opaque_ForwardIndexType
    
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
    public typealias Forwarded = opaque_GeneratorType
    
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
        return forwarded.opaque_GeneratorType_toAnyGenerator() as! AnyGenerator
    }
}

extension AnyRandomAccessCollection: MutableForwarderType
{
    public typealias Forwarded = opaque_CollectionType
    
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
        return forwarded.opaque_CollectionType_toAnyRandomAccessCollection() as! AnyRandomAccessCollection
    }
}

extension AnyRandomAccessIndex: MutableForwarderType
{
    public typealias Forwarded = opaque_RandomAccessIndexType
    
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
    public typealias Forwarded = opaque_SequenceType
    
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
        return forwarded.opaque_SequenceType_toAnySequence() as! AnySequence
    }
}
