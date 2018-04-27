# Swift-For-Tensorflow
For leraning Swift For Tensorflow

# Current Issues:

- If you take a look in the TensorFlow playground (notebook) you will see the following lines
```swift 
import TensorFlow

var matrix: Tensor<Float> = [[1,2], [3,4]]

let sum = matrix + matrix
print("Sum: \(sum)")
```

According to the docs this is fine, and should work. However, the playgroud (notebook) spilts out this error
```
Playground execution failed:

error: TensorFlow.playground:5:18: error: internal error generating TensorFlow graph:
GraphGen cannot lower a 'send' to the host yet
let sum = matrix + matrix
                 ^
```

🤔

It is interesting because that same code runs fine outside of a playground...see the basic.swift
When you compile and run basic.swift with,
```
swiftc -O -sdk `xcrun --show-sdk-path` basic.swift
./basic
```

you get the results:
```
Sum: [[2.0, 4.0], [6.0, 8.0]]
```
