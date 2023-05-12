//
//  SettingViewController.swift
//  Randomizer
//
//  Created by Вадим Ахматханов on 03.05.2023.
//

import UIKit

class SettingViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue

    }
    
    @IBAction func cancelButtonPressed() {
    dismiss(animated: true)
    }
    

}
