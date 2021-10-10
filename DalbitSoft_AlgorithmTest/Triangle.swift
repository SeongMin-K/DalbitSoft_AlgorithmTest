//
//  Triangle.swift
//  DalbitSoft_AlgorithmTestTests
//
//  Created by SeongMinK on 2021/10/11.
//

import Foundation

let triangleKind = (Equilateral:"Equilateral", Isosceles:"Isosceles", Scalene:"Scalene", ErrorKind:"ErrorKind")

struct Triangle {
    let first: Double
    let second: Double
    let third: Double
    
    var kind: String {
        let sides = [first, second, third].sorted()
        
        // 삼각형 성립 안함
        if sides[0] <= 0 || sides[0] + sides[1] < sides[2] {
            return triangleKind.ErrorKind
        }
        // 등변 삼각형
        else if sides[0] == sides[2] {
            return triangleKind.Equilateral
        }
        // 이등변 삼각형
        else if sides[0] == sides[1] || sides[1] == sides[2] {
            return triangleKind.Isosceles
        }
        // 부등변 삼각형
        else {
            return triangleKind.Scalene
        }
    }
}
