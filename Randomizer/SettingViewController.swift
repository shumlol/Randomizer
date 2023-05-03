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
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func cancelButtonPressed() {
    dismiss(animated: true)
    }
    

}
