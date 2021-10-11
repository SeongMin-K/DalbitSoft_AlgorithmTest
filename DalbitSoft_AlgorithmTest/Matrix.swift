//
//  Matrix.swift
//  DalbitSoft_AlgorithmTest
//
//  Created by SeongMinK on 2021/10/11.
//

// 4. Matrix

// 특정 값이 주어지면 행렬로 반환하면 됩니다.
// 아래와 같이 숫자가 주어지면 그것을 행렬로 반환할 수 있어야 합니다.

// 9 8 7
// 5 3 2
// 6 6 7

// matrix.rows[0] 의 반환 값은 9 8 7
// matrix.column[0] 의 반환 값은 9 5 6

struct Matrix {
    let str: String
    
    // 행렬의 행 배열 저장
    var rows: [[Int]] {
        var row = [[Int]]()
        let split: [String] = str.components(separatedBy: "\n")
        
        for s in split {
            var arr = [Int]()   // 한 행씩 저장할 임시 배열
            let split2: [String] = s.components(separatedBy: " ")
            
            for i in split2 {
                arr.append(Int(i)!)
            }
            row.append(arr)
        }
        
        return row
    }
    
    // 행렬의 열 배열 저장
    var columns: [[Int]] {
        var column = [[Int]]()
        
        for row in rows {
            for i in 0..<row.count {
                column.append([])
                column[i].append(row[i])
            }
        }

        return column
    }
}
