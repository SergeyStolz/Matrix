// Create a matrix of zeros. Fill the main diagonal and the other (side) diagonal with ones.
func createMatrix(rows: Int, colms: Int) -> [[Int]] {
    var myMatrix = Array(repeating: Array(repeating: 0, count: colms), count: rows)

    for i in 0..<rows {
        for j in 0..<colms {
            myMatrix[i][j] = 0
            myMatrix[i][i] = 1
            myMatrix[i][rows-i-1] = 1
        }
    }
    return myMatrix
}
var matrix = createMatrix(rows: 10, colms: 10)
for i in 0...9 {
    print(matrix[i])
}
