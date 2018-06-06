//
//  ViewController.swift
//  demo
//
//  Created by pan zhansheng on 2018/6/6.
//  Copyright © 2018年 pan zhansheng. All rights reserved.
//

import UIKit
struct Person {
    var name: String
}
extension Person: Equatable {
    static func ==(lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
    }
}
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let _ = Person(name: "Lisa") == Person(name: "Lisa") // → true
        let _ = Person(name: "Lisa") == Person(name: "Bart") // → false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

