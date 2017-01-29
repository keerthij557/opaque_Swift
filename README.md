# opaque_Swift
Type-erasure for certain generic constructs in the Swift standard library.

opaque_Swift exposes otherwise generic/associated-type-dependent functionality via opaque interfaces. All exposed functions/properties return opaque values, wrapped as optionals where necessary (i.e. for scenarios the operation might fail).
