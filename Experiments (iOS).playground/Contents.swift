//
// Copyright (c) Vatsal Manot
//

import Foundation
import OpaqueSwift
import Swift

public struct IteratorOnly<I: IteratorProtocol>: IteratorProtocol2
{
    public typealias Value = I
    
    public private(set) var value: Value
    
    public init(_ value: Value)
    {
        self.value = value
    }
    
    public mutating func next() -> I.Element?
    {
        return value.next()
    }
}

public struct FlatSequenceIterator<I: IteratorProtocol2, T>: IteratorProtocol2
{
    public var value: I
    {
        return (workstack.first! as! IteratorOnly<I>).value
    }
    
    public init(_ value: I)
    {
        self.workstack = [IteratorOnly(value)]
    }
    
    private var workstack: [opaque_IteratorProtocol] = []
    
    public mutating func next() -> T?
    {
        workstackLoop: while !workstack.isEmpty
        {
            while let element = workstack[workstack.endIndex - 1].opaque_IteratorProtocol_next()
            {
                if element.dynamicType != T.self
                {
                    if let element = element as? opaque_Sequence
                    {
                        workstack.append(element.opaque_Sequence_makeIterator())
                        
                        continue workstackLoop
                    }
                }
                
                if let element = element as? T
                {
                    return element
                }
                
                continue
            }
            
            if workstack.count == 1
            {
                return nil
            }
                
            else
            {
                workstack.removeLast()
            }
        }
        
        return nil
    }
}

public struct FlatSequence<S: Sequence2, T>: Sequence2 where S.Iterator: IteratorProtocol2
{
    public private(set) var value: S
    
    public init(_ value: S)
    {
        self.value = value
    }
    
    public func makeIterator() -> FlatSequenceIterator<S.Iterator, T>
    {
        return .init(value.makeIterator())
    }
}

var x = [1, 2, [3, 4, [5, 6, [7, [8, [9]], [10], 11], 12], 13], [14, 15, [16]]]

Array(FlatSequence<[NSObject], Int>(x)) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]
