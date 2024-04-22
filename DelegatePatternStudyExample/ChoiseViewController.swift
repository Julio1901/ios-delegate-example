//
//  ChoiseViewController.swift
//  DelegatePatternStudyExample
//
//  Created by Julio Cesar Pereira on 22/04/24.
//

import UIKit

class ChoiseViewController: UIViewController {

    var choiceDelegate : ChoiceDelegate!

    @IBAction func btnIphoneAction(_ sender: UIButton) {
        guard let productName = sender.titleLabel?.text else {return}
        goToResultScreen(productName: productName)
       
    }
    
    @IBAction func btnIpadAction(_ sender: UIButton) {
        guard let productName = sender.titleLabel?.text else {return}
        goToResultScreen(productName: productName)
    }
    
    @IBAction func btnAppleWatchAction(_ sender: UIButton) {
        guard let productName = sender.titleLabel?.text else {return}
        goToResultScreen(productName: productName)
  
    }
    
    
    func goToResultScreen(productName: String) {
//        let resultController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
//        choiceDelegate = resultController
        present(choiceDelegate as! ResultViewController , animated: true, completion: nil)
        choiceDelegate?.setChoise(productName: productName)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

}
