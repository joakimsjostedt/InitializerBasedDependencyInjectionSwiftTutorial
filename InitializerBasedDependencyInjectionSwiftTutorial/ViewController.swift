//
//  ViewController.swift
//  InitializerBasedDependencyInjectionSwiftTutorial
//
//  Created by Joakim Sjöstedt on 2020-03-06.
//  Copyright © 2020 Joakim Sjöstedt. All rights reserved.
//

import UIKit

class InjectedClass {
    let injectedVariable: String
    
    init(injectedVariable: String) {
        self.injectedVariable = injectedVariable
    }
    
    func printVariable() {
        print(injectedVariable)
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let injectedObject = InjectedClass(injectedVariable: "I'm injected!")
        injectedObject.printVariable()
    }
}

