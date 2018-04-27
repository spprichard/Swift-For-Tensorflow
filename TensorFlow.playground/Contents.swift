import TensorFlow

// Wrapping the Tensor op in a fuction is a work around
// for the bug explained in the README.md
func tensorSum() {
    let matrix: Tensor<Float> = [[1,2], [3,4]]
    let sum = matrix + matrix
    print("Sum: \(sum)")
}
tensorSum()


func tensorSqrt(){
    let matrix: Tensor<Float> = [[1,2], [3,4]]
    let result = sqrt(matrix)
    print("SQRT: \(result)")
}
tensorSqrt()



func tensorMatrixProduct() {
    let matrix: Tensor<Float> = [[1,2], [3,4]]
    let matrixProduct = matrix.dot(matrix)
    print("Matrix Product: \(matrixProduct)")
}
tensorMatrixProduct()
