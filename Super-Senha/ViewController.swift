//
//  ViewController.swift
//  Super-Senha
//
//  Created by Gabriel on 21/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialCharacteres: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numbertOfPasswords = Int(tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numbertOfPasswords
        }
        if let numbertOfCharacters = Int(tfTotalPasswords.text!) {
            passwordsViewController.numberOfPasswords = numbertOfCharacters
    }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacteres.isOn
        view.endEditing(true)
}

}
