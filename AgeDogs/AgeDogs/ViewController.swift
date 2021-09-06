//
//  ViewController.swift
//  AgeDogs
//
//  Created by Jefferson Oliveira de Araujo on 05/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textMsg: UILabel!
    @IBOutlet weak var textAgeDog: UILabel!
    @IBOutlet weak var inputAge: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textMsg.isHidden = true
        textAgeDog.isHidden = true
    }

    @IBAction func buttonDiscoverAge(_ sender: Any) {
        if inputAge.text == "" {
            textMsg.isHidden = false
            textMsg.text = "Por favor, digite a idade do seu amiguinho!"
        } else {
            textMsg.isHidden = false
            textMsg.text = "A idade do seu cachorro em anos humanos é:"
            textAgeDog.isHidden = false
            calculatorAge()
            inputAge.text = ""
        }
    }
    
    func calculatorAge() {
        let ageDog = Int(inputAge.text!)! * 7
        textAgeDog.text = String(ageDog)
    }
}

