//
// Copyright (c) Vatsal Manot
//

import Foundation
import Swift

extension AnySequence: _SequenceType
{

}

extension GeneratorSequence: _SequenceType
{
    
}

extension LazySequence: _SequenceType
{

}

extension NSArray: _SequenceType
{
    
}

extension NSDictionary: _SequenceType
{
    
}

extension NSSet: _SequenceType
{
    
}

extension Zip2Sequence: _SequenceType
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return AnySequence(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}
