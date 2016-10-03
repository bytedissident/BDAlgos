//
//  BDDataStructures.swift
//  BDAlgos
//
//  Created by derek lee bronston on 10/1/16.
//  Copyright © 2016 Bytedissident. All rights reserved.
//

import Foundation


class BDLinkedListNode {
    
    var value:AnyObject?
    var next:BDLinkedListNode?
    
}

class BDLinkedList{

    var head:BDLinkedListNode?
    var current:BDLinkedListNode?
    
    //IF FIFO
    /*func insertAfter(value:AnyObject){
        
        if self.head == nil {
            let node = BDLinkedListNode()
            node.value = value
            self.head = node
            self.current = self.head
        }else{
            let node = BDLinkedListNode()
            node.value = value
            self.current?.next = node
            self.current = node
        }
    }*/
    
    //IF LIFO
    func insertBefore(value:AnyObject){
        
        if self.head == nil {
            let node = BDLinkedListNode()
            node.value = value
            self.head = node
        }else{
            let node = BDLinkedListNode()
            node.value = value
            node.next = head
            head = node
        }
    }

    
    func delete(node:BDLinkedListNode){
        
        if let n = node.next?.next {
            node.next = n
        }
        
        if let v = node.next?.value {
            node.value = v
        }
    }
    func search(){
    
    
    }
}


class BDTrieNode {
    
    var value:String?
    var paths = [String:BDTrieNode]()
}


class BDTrie{
    
    var root:BDTrieNode?
    
    init(node:BDTrieNode) {
        self.root = node
    }
    
    func insert(){
    }
    
    func search(word:String)->BDTrieNode?{
        
        let len = word.characters.count
        var counter = 0
        var node = root
        while counter < len {
            while node != nil {
            }
            
            counter += 1
        }
        /*var node = root
        while node != nil {
            var counter = 0
            while counter < (node?.paths.count)! {
                if node?.paths[counter] === BDTrieNode() {
                    node = node?.paths[counter]
                    break
                }
                counter += 1
            }
        }*/
        return node
    }
}

class BDQueue{
    
    
    
    
}


class BDStack{
    
    lazy var stack = BDLinkedList()
    
    func pop()->BDLinkedListNode?{
    
        if stack.head != nil {
            
            let node = BDLinkedListNode()
            node.value = stack.head?.value
            node.next = stack.head?.next
            
            stack.delete(node: stack.head!)
            
            return node
        }
        
        return nil
    }
    
    func push(value:AnyObject){
        
        self.stack.insertBefore(value: value);
    }
}

class BDBinarySearchTree{
    
    
    
    
}

class BDGraph{
    
    
    
    
}
