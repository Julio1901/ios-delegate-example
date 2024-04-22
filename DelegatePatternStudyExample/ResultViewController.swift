//
//  ResultViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ResultViewController: UIViewController, ResultCounterDelegate {

    @IBOutlet weak var resultLabel: UILabel!
    
    // This works up to 1 because the var is reset when the screen disappears
    func increaseCounter() {
        var counter = Int(resultLabel?.text ?? "0")
        counter! += 1
        resultLabel.text = String(counter!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

}
