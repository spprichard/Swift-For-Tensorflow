#!/usr/bin/env swift -O
// Note: adding the line above, as well as making this file executable
// will allow you to run the file with ./inference.swift

import TensorFlow

struct MLPClassifier {
	var w1 = Tensor<Float>(shape: [2,4], repeating: 0.1)
	var w2 = Tensor<Float>(shape: [4,1], scalars: [0.4, -0.5, -0.5, 0.4])
    var b1 = Tensor<Float>([0.2, -0.3, 0.3, 0.2])
    var b2 = Tensor<Float>([[0.4]])
    
    func prediction(for x: Tensor<Float>) -> Tensor<Float> {
        let o1 = tanh(x ⊗ w1 + b1)
        return tanh(o1 ⊗ w2 + b2)
    }
}

let input = Tensor<Float>([[0.2, 0.8]])
let classifier = MLPClassifier()
let prediction = classifier.prediction(for: input)
print(prediction)

