//
//  BDDataStructuresTests.swift
//  BDAlgos
//
//  Created by derek lee bronston on 10/1/16.
//  Copyright © 2016 Bytedissident. All rights reserved.
//

import XCTest
@testable import BDAlgos


class BDDataStrcuturesTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testLinkedList(){
    
        let sut:BDLinkedList = BDLinkedList()
        
        //INSERT
        sut.insertBefore(value: 1 as AnyObject)
        
        //IS HEAD ADDED
        XCTAssertEqual(sut.head?.value as! Int, 1 );
        
        //SECOND OBJECT
        sut.insertBefore(value: 2 as AnyObject)
        XCTAssertEqual(sut.head?.value as! Int, 2 );
        XCTAssertEqual(sut.head?.next?.value as! Int, 1 );
        //XCTAssertEqual(sut.current?.value as! Int, 2 );
        
        sut.delete(node:sut.head!)
        XCTAssertEqual(sut.head?.value as! Int, 1);
        
    }
    
    func testStack(){
        let sut = BDStack()
        
        sut.push(value: 1 as AnyObject)
        sut.push(value: 2 as AnyObject)
        XCTAssertEqual(sut.stack.head?.value as! Int, 2 );
        XCTAssertEqual(sut.stack.head?.next?.value as! Int, 1 );
        
        XCTAssertEqual(sut.pop()?.value as! Int, 2 );
        XCTAssertEqual(sut.stack.head?.value as! Int, 1 );
        
       // XCTAssertEqual(sut.pop()?.value as! Int, 1 );
       // XCTAssertNil(sut.stack.head  );
       
    }
    
    
    func testTrie(){
    
        let node = BDTrieNode()
        
        let node2 = BDTrieNode()
        node2.value = "Hello" as AnyObject
        node.paths.append(node2)
        let trie = BDTrie(node:node)
        let n = trie.root?.paths[0]
        
       XCTAssertEqual(n?.value as! String,"Hello")
        
    }
}
