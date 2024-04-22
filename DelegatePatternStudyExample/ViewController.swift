//
//  ViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
//        let julio = Person()
        let robot = Robot()
        let laundryPerson = LaundryPerson()
        
        julio.laundryDelegate = robot
        julio.laundryDelegate = laundryPerson
        julio.clothesAreDirty()
        
    }


}

