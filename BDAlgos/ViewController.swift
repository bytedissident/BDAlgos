//
//  ViewController.swift
//  BDAlgos
//
//  Created by derek lee bronston on 10/1/16.
//  Copyright © 2016 Bytedissident. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bdAlgos = BDAlgos();
        //let f = bdAlgos.binarySearch(target: 2, array: [10,8,2,12,44]);
        //print(f)
        
        //print(bdAlgos.mergeSort(array:[10,8,2,12,44]))
        
        print("counting sort result")
        //print(bdAlgos.countingSort(array:[10,8,2,12,44],max:100))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

