//
// Copyright (c) Vatsal Manot
//

import Swift

extension ExpressibleByNilLiteral
{
    
}

prefix operator -??>

@_transparent public prefix func -??> <T, U: ExpressibleByNilLiteral>(rhs: T) -> U
{
    return -?>rhs ?? nil
}
