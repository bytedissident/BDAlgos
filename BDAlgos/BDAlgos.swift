//
//  BDAlgos.swift
//  BDAlgos
//
//  Created by derek lee bronston on 9/1/16.
//  Copyright © 2016 Bytedissident. All rights reserved.
//

import Foundation

class BDAlgos {
    
    //O(n + k)
    func countingSort(array:Array<Int>, max:Int)->[Int]{
        
        var result = [Int]()
        var sortingArray = [Int]()
        
        for _ in 0..<max {
            sortingArray.append(0)
        }
        
        for i in 0..<array.count {
            let val = sortingArray[array[i]]
            sortingArray[array[i]] = val + 1
        }
        
        for i in 0..<sortingArray.count {
            let times = sortingArray[i]
            for _ in 0..<times {
                result.append(i)
            }
        }
        
        return result
    }
    
    //QUICKSORT
    //θ(n lg(n)), O(n squared), Ω(n lg(n))
    func quickSort(start:Int,end:Int , array:inout [Int]){
        if start >= end {
            return
        }
        
        let pIndex = partion(start: start, end: end,array: &array)
        quickSort(start: start, end: pIndex-1,array: &array)
        quickSort( start: pIndex + 1, end: end,array: &array)
        
    }
    
    func partion(start:Int,end:Int, array:inout [Int])->Int{
        
        let pivot = array[end]
        var pIndex = start
        
        for i in start..<end{
            if array[i] <= pivot && i != pIndex {
                swap(&array[i],&array[pIndex])
                pIndex += 1
            }
        }
        
        if array[end] < array[pIndex] {
            swap(&array[pIndex],&array[end])
        }
        return pIndex;
    }
    //END QUICKSORT
    
    
    //MERGESORT
    //O(n lg(n))
    func mergeSort(array:Array<Int>)->[Int]{

        guard array.count > 1 else { return array }
        
        let midIndex = array.count / 2
        let leftArray = mergeSort(array:Array(array[0..<midIndex]))
        let rightArray = mergeSort(array:Array(array[midIndex..<array.count]))
        
        return merge(left: leftArray, right: rightArray)
    }
    
    func merge(left:Array<Int>,right:Array<Int>)->[Int]{
        
        var leftIndex = 0
        var rightIndex = 0
        var ordered = [Int]();
        
        while leftIndex < left.count && rightIndex < right.count {
            
            if left[leftIndex] < right[rightIndex]{
                ordered.append(left[leftIndex])
                leftIndex += 1
            }else if right[rightIndex] < left[leftIndex] {
                ordered.append(right[rightIndex])
                rightIndex += 1
            }else{
                ordered.append(left[leftIndex])
                leftIndex += 1
                ordered.append(right[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < left.count {
            ordered.append(left[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < right.count {
            ordered.append(right[rightIndex])
            rightIndex += 1
        }
    
        return ordered;
    }
    
    //END MERGESORT
    
    //O(lg n)
    func binarySearch(target:Int,array:Array<Int>)->Bool{
        
        var lowIndex = 0
        var highIndex = array.count - 1
        
        while lowIndex <= highIndex{
            let middleIndex = Int((lowIndex + highIndex)/2)
            
            if target < array[middleIndex] {
                highIndex = middleIndex - 1;
            }else if target > array[middleIndex]{
                lowIndex = middleIndex + 1
            }else{
                lowIndex = array.count
                return true;
            }
        }
        return false;
    }
}
