//
//  Triangle.swift
//  DalbitSoft_AlgorithmTestTests
//
//  Created by SeongMinK on 2021/10/11.
//

// 1. 삼각형 구하기

// 주어진 삼각형이 정삼각형, 이등변삼각형, 부등변삼각형인지 구합니다.
// 예외 : 모든 변의 길이가 0보다 커야 하고 두 변의 길이의 합이 세 번째 변의 길이의 합보다 크거나 같아야 합니다.

let triangleKind = (Equilateral:"Equilateral", Isosceles:"Isosceles", Scalene:"Scalene", ErrorKind:"ErrorKind")

struct Triangle {
    let first: Double
    let second: Double
    let third: Double
    
    var kind: String {
        // 삼각형의 변들을 오름차순으로 정렬
        let sides = [first, second, third].sorted()
        
        // 삼각형 성립 안함 (가장 작은 변의 길이가 0보다 같거나 작거나, 짧은 두 변의 길이의 합이 가장 큰 변의 길이보다 작을 때)
        if sides[0] <= 0 || sides[0] + sides[1] < sides[2] {
            return triangleKind.ErrorKind
        }
        // 등변 삼각형 (세 변의 길이가 같을 때)
        else if sides[0] == sides[2] {
            return triangleKind.Equilateral
        }
        // 이등변 삼각형 (두 변의 길이가 같을 때)
        else if sides[0] == sides[1] || sides[1] == sides[2] {
            return triangleKind.Isosceles
        }
        // 부등변 삼각형 (위의 경우들에 해당하지 않을 때)
        else {
            return triangleKind.Scalene
        }
    }
}
