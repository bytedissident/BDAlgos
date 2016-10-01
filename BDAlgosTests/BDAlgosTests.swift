//
//  BDAlgosTests.swift
//  BDAlgosTests
//
//  Created by derek lee bronston on 10/1/16.
//  Copyright © 2016 Bytedissident. All rights reserved.
//

import XCTest
@testable import BDAlgos

class BDAlgosTests: XCTestCase {
    
    let sut:BDAlgos = BDAlgos()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testMergeSort(){
        
        let result = sut.mergeSort(array:[10,8,2,12,44])
        XCTAssertEqual(result[0], 2)
        XCTAssertEqual(result[1], 8)
        XCTAssertEqual(result[2], 10)
        XCTAssertEqual(result[3], 12)
        XCTAssertEqual(result[4], 44)
    }
    
    
    func testCountingSort(){
        
        let result = sut.countingSort(array:[10,8,2,12,44],max:100)
        XCTAssertEqual(result[0], 2)
        XCTAssertEqual(result[1], 8)
        XCTAssertEqual(result[2], 10)
        XCTAssertEqual(result[3], 12)
        XCTAssertEqual(result[4], 44)
    }
    
    
    func testBinarySearch(){
        
        let result = sut.binarySearch(target: 2, array: [10,8,2,12,44])
        XCTAssertTrue(result);
    }
}
