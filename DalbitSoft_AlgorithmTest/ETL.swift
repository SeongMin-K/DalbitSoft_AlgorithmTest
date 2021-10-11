//
//  ETL.swift
//  DalbitSoft_AlgorithmTest
//
//  Created by SeongMinK on 2021/10/11.
//

// 2. 레거시 시스템 개선

// 실무에서는 흔히 일어나는 일이죠.
// 새로운 기능을 추가하기 위해서 처음부터 새로 시작하고 싶지만 보통은 기존의 시스템 위에서 개선해야 합니다.
// 다음과 같은 상황을 개선하려면 어떻게 해야 할까요?

// 기존 시스템은 특정 스펠링에 특정 점수를 매칭 시켜 점수를 처리합니다.

// - 1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
// - 2 points: "D", "G",
// - 3 points: "B", "C", "M", "P",
// - 4 points: "F", "H", "V", "W", "Y",
// - 5 points: "K",
// - 8 points: "J", "X",
// - 10 points: "Q", "Z",

// 개선하고자 하는 시스템은 기존의 시스템과 같이 정보가 들어 왔을 때 특정 시스템이 어떤 값인지 1:1로 대응 시켜줍니다.

// - "a" is worth 1 point.
// - "b" is worth 3 points.
// - "c" is worth 3 points.

// 딕셔너리 인덱스 접근으로 수정 필요 /////////////////////
class ETL {
    static func transform(old: [Int: [String]]) -> [String: Int] {
        var results = [String: Int]()
        
        let point1 = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
        let point2 = ["D", "G"]
        let point3 = ["B", "C", "M", "P"]
        let point4 = ["F", "H", "V", "W", "Y"]
        let point5 = ["K"]
        let point8 = ["J", "X"]
        let point10 = ["Q", "Z"]
        
        for (key, value) in old {
            for v in value {
                if point1.contains(v) {
                    results[v.lowercased()] = key
                }
                if point2.contains(v) {
                    results[v.lowercased()] = key
                }
                if point3.contains(v) {
                    results[v.lowercased()] = key
                }
                if point4.contains(v) {
                    results[v.lowercased()] = key
                }
                if point5.contains(v) {
                    results[v.lowercased()] = key
                }
                if point8.contains(v) {
                    results[v.lowercased()] = key
                }
                if point10.contains(v) {
                    results[v.lowercased()] = key
                }
            }
        }
        
        return results
    }
}
