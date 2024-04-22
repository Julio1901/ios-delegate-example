//
//  Person.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import Foundation

class Person {
    var laundryDelegate: LaundryDelegate?
    
    func  clothesAreDirty () {
        laundryDelegate?.doLaundry()
    }
}
