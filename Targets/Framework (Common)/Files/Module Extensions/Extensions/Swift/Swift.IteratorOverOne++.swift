//
// Copyright (c) Vatsal Manot
//

import Swift

extension IteratorOverOne
{
    public init(_ element: Element)
    {
        self = CollectionOfOne(element).makeIterator()
    }
}
