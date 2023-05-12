//
//  ViewController.swift
//  Randomizer
//
//  Created by Вадим Ахматханов on 02.05.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet var minimumNumberLabel: UILabel!
    @IBOutlet var maximumNubmerLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomNumberButton: UIButton!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomNumberButton.layer.cornerRadius = 10

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingViewController else { return }
            settingsVC.minimumValue = minimumNumberLabel.text
            settingsVC.maximumValue = maximumNubmerLabel.text
    }
    
    @IBAction func getRandomNumberTapped(_ sender: UIButton) {
        let minimumNumber = Int(minimumNumberLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumNubmerLabel.text ?? "") ?? 100
        
        randomValueLabel.text = Int.random(in: minimumNumber...maximumNumber).formatted()
    }

    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let settingVC = segue.source as? SettingViewController else { return }
        minimumNumberLabel.text = settingVC.minimumValueTF.text
        maximumNubmerLabel.text = settingVC.maximumValueTF.text
    }
    
}

