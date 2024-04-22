//
//  ResultViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ResultViewController: UIViewController, ChoiceDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    
    func setChoise(productName: String) {
        resultLabel.text = productName
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
