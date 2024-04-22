//
//  ViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ViewController: UIViewController {
    
    var resultCounterDelegate : ResultCounterDelegate?
    
    @IBAction func btnIncreaseCounter(_ sender: Any) {
        let controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        resultCounterDelegate = controller
        present(controller, animated: true, completion: nil)
        resultCounterDelegate?.increaseCounter()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
