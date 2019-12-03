protocol MatrixTestable {
    
// Constructor
// dimension: Matrix size
// elementConstructor: Closure with input element row and column, which return the element Int value.
init(dimension: Int, elementConstructor: ((_ column: Int, _ row: Int) -> Int))

// Determinant calculating function
func determinant() -> Int
}

struct MatrixSolver: MatrixTestable {
    
    var matrix: Array<Array<Int>> = []
    
    init(dimension: Int, elementConstructor: ((Int, Int) -> Int)) {
        
        var matrixRow: Array<Int>
        
        if dimension > 0 {
            for row in (1...dimension) {
                matrixRow = []
                for column in (1...dimension) {
                    matrixRow.append(elementConstructor(column, row))
                }
                matrix.append(matrixRow)
            }
        } else {
            print("I can`t create matrix with negative or zero dimension")
        }
    }
    
    func determinant() -> Int {
        func recursiveDeterminant(_ matrix: Array<Array<Int>>) -> Int {
            
            var tempMatrix: Array<Array<Int>> = []
            var tempMatrixRow: Array<Int>
            var result: Int = 0
            var sign: Int = 1
            
            if matrix.count == 2 {
                result = result + matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]
            } else if matrix.count > 2 {
                for i in (0...matrix.count-1) {
                    // Decomposition on the first line:
                    let line = 0
                    tempMatrix = []
                    for row in (0...matrix.count-1) {
                        tempMatrixRow = []
                        for column in (0...matrix.count-1) {
                            if column != i && row != line {
                                tempMatrixRow.append(matrix[row][column])
                            }
                        }
                        if tempMatrixRow.count > 0 {
                            tempMatrix.append(tempMatrixRow)
                        }
                    }
                    result = result + (sign * matrix[0][i] * recursiveDeterminant(tempMatrix))
                    sign *= (-1)
                }
            }
            return result
        }
        return recursiveDeterminant(self.matrix)
    }
}

for i in -1...3 {
    let testMatrix = MatrixSolver(dimension: i, elementConstructor:{(column: Int, row: Int) -> Int in return (column*2-row)})
    if testMatrix.matrix.count > 0 {
        print("Matrix: \(testMatrix.matrix)\n Determinant: \(testMatrix.determinant())")
    }
}
