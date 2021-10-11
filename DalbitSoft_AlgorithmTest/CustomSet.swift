//
//  CustomSet.swift
//  DalbitSoft_AlgorithmTest
//
//  Created by SeongMinK on 2021/10/11.
//

// 5. Custom Set

// 테스트 코드의 문제를 모두 해결할 수 있는 Custom Set 을 만들어 보아요.

struct CustomSet: Equatable {
    var contents: Set<Double> = []
    
    public static func ==(lhs: CustomSet, rhs: CustomSet) -> Bool {
        return lhs.contents == rhs.contents
    }
    
    mutating func delete(_ mem: Double) {
        contents.remove(mem)
    }
    
    //    mutating func difference() {
    //    }
        
    //    mutating func isDisjoint() {
    //    }

    //    mutating func isDisjoint() {
    //    }

    //    mutating func intersection() {
    //    }
        
    //    mutating func containsMember() {
    //    }
        
    mutating func put(_ add: Double) {
        contents.insert(add)
    }
    
    var size: Int {
        return contents.count
    }

    //    mutating func isSupersetOf() {
    //    }

    //    mutating func toSortedArray() {
    //    }
}
