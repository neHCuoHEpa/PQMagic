# PQMagic

PQMagic is a SDK to check input string value is magically transform to output value by unknown magical transformations.  

## Installation

### Swift Package Manager
The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler.

dependencies: [
    .package(url: "https://github.com/neHCuoHEpa/PQMagic.git", .upToNextMajor(from: "1.0"))
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

## Sample
Open Sample/PQ.xcodeproj and run.
Enter you desire values and let SDK do the magic. 

## Test Framework
Used XCTest framework
