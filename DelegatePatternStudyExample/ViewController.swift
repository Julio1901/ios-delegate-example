//
//  ViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ViewController: UIViewController, ChoiceDelegate {

    @IBOutlet weak var choiseLabel: UILabel!
    
    func setChoise(productName: String) {
        self.choiseLabel.text = productName
    }
    
    // An example of how to define a delegated class by navigating to a delegating class anonymously so that it doesn't know who will serve its request.
    @IBAction func btnIncreaseCounter(_ sender: Any) {
        let resultController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        let choiceController = storyboard?.instantiateViewController(withIdentifier: "ChoiseViewController") as! ChoiseViewController
        choiceController.choiceDelegate = resultController
        choiceController.modalPresentationStyle = .fullScreen
        present(choiceController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
