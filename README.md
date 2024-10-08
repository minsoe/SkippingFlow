# SkippingFlow

SkippingFlow - a flow layout wrapper library for [skip.tool](https://skip.tools/) projects using [SwiftUI-Flow](https://github.com/tevelee/SwiftUI-Flow) for iOS and [Google's accompanist-flowlayout](https://github.com/google/accompanist) for Android.


## Installation
To include this library in your skip project, add the following dependency to your package manager file.

```
    dependencies: [
        .package(url: "https://github.com/minsoe/SkippingFlow.git", branch: "main"),
    ]
```

## Usage

### SkippingHFlow (Horizontal)
```swift
import SkippingFlow
...

SkippingHFlow {
    ForEach(data, id: \.self) {  
        Text($0)
    }
}
```

### SkippingVFlow (Vertical)
```swift
import SkippingFlow
...

SkippingVFlow {
    ForEach(data, id: \.self) {  
        Text($0)
    }
}
```
