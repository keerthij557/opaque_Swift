//
// Copyright (c) Vatsal Manot
//

import Swift

extension Character: ExpressibleByBooleanLiteral
{
    public init(booleanLiteral value: Bool)
    {
        switch value
        {
            case true:
                self.init(String(describing: value))
            case false:
                self.init(String(describing: value))
        }
    }
}

extension String: ExpressibleByBooleanLiteral
{
    public init(booleanLiteral value: Bool)
    {
        self.init(describing: value)
    }
}
