# PQMagic

PQMagic is a SDK to check input string value is magically transform to output value by unknown magical transformations.  

## Installation

### Swift Package Manager
The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

dependencies: [
    .package(url: "https://github.com/neHCuoHEpa/PQMagic.git", .branch("main"))
]

## Manual
Download source files and drag and drop "Sources/PQMagic.swift" to your project

## Usage
Once you added the SDK you have to import it.
```swift
import PQMagic
``` 

then use it

```swift
let magic = PQMagic() 
magic.invoke(initial: "your input", target: "your output")
```

example

```swift
let magic = PQMagic() 
magic.invoke(initial: initial: "PQQ", target: "QQPQPPPP")
```

## Test Framework
Used XCTest framework
