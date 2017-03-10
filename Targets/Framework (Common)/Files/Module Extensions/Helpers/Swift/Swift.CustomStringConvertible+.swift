//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol CustomStringConvertibleOptionSet: CustomStringConvertible, Hashable2, OptionSet, RawRepresentable2
{
    static var casesAndCorrespondingNames: [Self: String] { get }
}

extension CustomStringConvertibleOptionSet where Element == Self
{
    public var description: String
    {
        return Self.casesAndCorrespondingNames.filter({ self.contains($0.0) }).map({ $0.1 }).description
    }
}

public func describe<T: CustomStringConvertible>(_ some: T) -> String
{
    return some.description
}

public func describe(_ some: Any) -> String
{
    return .init(describing: some)
}
