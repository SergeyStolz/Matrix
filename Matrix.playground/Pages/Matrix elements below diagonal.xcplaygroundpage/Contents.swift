/*
Create a matrix of zeros.
Fill the (side) diagonal with "1".
Fill all elements below the side diagonal with "3".
 */
func createMatrix(rows:Int, colms: Int) -> [[Int]] {
   var myMatrix = Array(repeating: Array(repeating: 0, count: colms), count: rows)
    for row in 0..<rows {
       for colm in 0..<colms {
           let colmIndex = colms - 1

           let conditionForPrintleftDownDeagonal = colm == colmIndex - row
           let conditionForPrintRightDownDeagonal = row == colm

           let conditionTogle = true

           let conditionForPrintOne = conditionTogle ? conditionForPrintleftDownDeagonal : conditionForPrintRightDownDeagonal
           let conditionForPrintThree = rows-row-1 < colm

           if conditionForPrintOne {
               myMatrix[row][colm] = 1
           } else if conditionForPrintThree {
               myMatrix[row][colm] = 3
           }
       }
   }
   return myMatrix
}
var matrix = createMatrix(rows: 10, colms: 10)
   for i in 0...9 {
       print(matrix[i])
   }
