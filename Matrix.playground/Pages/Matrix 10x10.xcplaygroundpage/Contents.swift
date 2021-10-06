// Create a 10x10 matrix, fill with numbers from 1 to 100.
func createMatrix(rows: Int, colms: Int) -> [[Int]] {
    var myMatrix = Array(repeating: Array(repeating: 0, count: colms), count: rows)

    for i in 0..<rows {
        for j in 0..<colms {
            myMatrix[i][j] = 10 * i + j + 1
        }
    }
    return myMatrix
}
var matrix = createMatrix(rows: 10, colms: 10)
for i in 0...9 {
    print(matrix[i])
}
