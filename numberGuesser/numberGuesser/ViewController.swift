//
//  ViewController.swift
//  numberGuesser
//
//  Created by Cambrian on 2022-04-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessLabel: UILabel!
    @IBOutlet weak var guessSlider: UISlider!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func showAnswer(_ sender: Any) {
        let maxVal = Int(guessSlider.maximumValue)
        let answerVal = Int.random(in: 0...maxVal)
        let guess = Int(guessSlider.value)
        
        answerLabel.text = String(answerVal)
        
        if(answerVal == guess){
            self.resultLabel.text = NSLocalizedString("congratulations", comment: "You win")
        } else {
            self.resultLabel.text = NSLocalizedString("better luck next time", comment: "You loss")
        }
        
        if(answerVal == guess){
            self.view.backgroundColor = .green
        }else{
            self.view.backgroundColor = .red
            
        }
        
    }
    
    @IBAction func setGuess(_ sender: UISlider) {
        guessLabel.text = String(Int(sender.value))
    }
    
    @IBAction func changeDiff(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            guessSlider.tintColor = .blue
            guessSlider.maximumValue = 10
        case 1:
            guessSlider.tintColor = .yellow
            guessSlider.maximumValue = 100
        case 2:
            guessSlider.tintColor = .purple
            guessSlider.maximumValue = 1000
        default:
            guessSlider.tintColor = .blue
            guessSlider.maximumValue = 10
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLabel.text = ""

    }


}

