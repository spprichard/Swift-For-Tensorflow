#!/usr/bin/env swift -O

import TensorFlow

var matrix: Tensor<Float> = [[1,2], [3,4]]

let sum = matrix + matrix
print("Sum: \(sum)")


let result = sqrt(matrix)
print("SQRT: \(result)")


