//
//  DalbitSoft_AlgorithmTestTests.swift
//  DalbitSoft_AlgorithmTestTests
//
//  Created by SeongMinK on 2021/10/11.
//

import XCTest
@testable import DalbitSoft_AlgorithmTest

class TriangleTests: XCTestCase {
    let triangleKind = (Equilateral:"Equilateral", Isosceles:"Isosceles", Scalene:"Scalene", ErrorKind:"ErrorKind")
    
    func testEquilateralTrianglesHaveEqualSides() {
        XCTAssertEqual(triangleKind.Equilateral, Triangle(first: 2, second: 2, third: 2).kind)
    }

    func testLargerEquilateralTrianglesAlsoHaveEqualSides() {
        XCTAssertEqual(triangleKind.Equilateral, Triangle(first: 10, second: 10, third: 10).kind)
    }

    func testIsoscelesTrianglesHaveLastTwoSidesEqual() {
        XCTAssertEqual(triangleKind.Isosceles, Triangle(first: 3, second: 4, third: 4).kind)
    }

    func testIsoscelesTrianglesHaveFirstAndLastSidesEqual() {
        XCTAssertEqual(triangleKind.Isosceles, Triangle(first: 4, second: 3, third: 4).kind)
    }

    func testIsoscelesTrianglesHaveTwoFirstSidesEqual() {
        XCTAssertEqual(triangleKind.Isosceles, Triangle(first: 4, second: 4, third: 3).kind)
    }

    func testIsoscelesTrianglesHaveInFactExactlyTwoSidesEqual() {
        XCTAssertEqual(triangleKind.Isosceles, Triangle(first: 10, second: 10, third: 2).kind)
    }

    func testScaleneTrianglesHaveNoEqualSides() {
        XCTAssertEqual(triangleKind.Scalene, Triangle(first: 3, second: 4, third: 5).kind)
    }

    func testScaleneTrianglesHaveNoEqualSidesAtALargerScaleToo() {
        XCTAssertEqual(triangleKind.Scalene, Triangle(first: 10, second: 11, third: 12).kind)
    }

    func testScaleneTrianglesHaveNoEqualSidesInDescendingOrderEither() {
        XCTAssertEqual(triangleKind.Scalene, Triangle(first: 5, second: 4, third: 2).kind)
    }

    func testVerySmallTrianglesAreLegal() {
        XCTAssertEqual(triangleKind.Scalene, Triangle(first: 0.4, second: 0.6, third: 0.3).kind)
    }

    func testTrianglesWithNoSizeAreIllegal() {
        XCTAssertEqual(triangleKind.ErrorKind, Triangle(first: 0, second: 0, third: 0).kind)
    }

    func testTrianglesWithNegativeSidesAreIllegal() {
        XCTAssertEqual(triangleKind.ErrorKind, Triangle(first: 3, second: 4, third: -5).kind)
    }

    func testTrianglesViolatingTriangleInequalityAreIllegal() {
        XCTAssertEqual(triangleKind.ErrorKind, Triangle(first: 1, second: 1, third: 3).kind)
    }

    func testTrianglesViolatingTriangleInequalityAreIllegal3() {
        XCTAssertEqual(triangleKind.ErrorKind, Triangle(first: 7, second: 3, third: 2).kind)
    }

    static var allTests: [(String, (TriangleTests) -> () throws -> Void)] {
        return [
            ("testEquilateralTrianglesHaveEqualSides", testEquilateralTrianglesHaveEqualSides),
            ("testLargerEquilateralTrianglesAlsoHaveEqualSides", testLargerEquilateralTrianglesAlsoHaveEqualSides),
            ("testIsoscelesTrianglesHaveLastTwoSidesEqual", testIsoscelesTrianglesHaveLastTwoSidesEqual),
            ("testIsoscelesTrianglesHaveFirstAndLastSidesEqual", testIsoscelesTrianglesHaveFirstAndLastSidesEqual),
            ("testIsoscelesTrianglesHaveTwoFirstSidesEqual", testIsoscelesTrianglesHaveTwoFirstSidesEqual),
            ("testIsoscelesTrianglesHaveInFactExactlyTwoSidesEqual", testIsoscelesTrianglesHaveInFactExactlyTwoSidesEqual),
            ("testScaleneTrianglesHaveNoEqualSides", testScaleneTrianglesHaveNoEqualSides),
            ("testScaleneTrianglesHaveNoEqualSidesAtALargerScaleToo", testScaleneTrianglesHaveNoEqualSidesAtALargerScaleToo),
            ("testScaleneTrianglesHaveNoEqualSidesInDescendingOrderEither", testScaleneTrianglesHaveNoEqualSidesInDescendingOrderEither),
            ("testVerySmallTrianglesAreLegal", testVerySmallTrianglesAreLegal),
            ("testTrianglesWithNoSizeAreIllegal", testTrianglesWithNoSizeAreIllegal),
            ("testTrianglesWithNegativeSidesAreIllegal", testTrianglesWithNegativeSidesAreIllegal),
            ("testTrianglesViolatingTriangleInequalityAreIllegal", testTrianglesViolatingTriangleInequalityAreIllegal),
            ("testTrianglesViolatingTriangleInequalityAreIllegal3", testTrianglesViolatingTriangleInequalityAreIllegal3),
        ]
    }
}
