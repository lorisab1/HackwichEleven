//
//  ViewController.swift
//  HackwichEleven
//
//  Created by Lorisa Bulosan on 11/16/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var targetLabel: UILabel!
    
    var currentValue: Int = 0
    
    var targetValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value)
        //targetValue = Int.random(in: 0...100)
        startNewRound()
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")
        slider.setThumbImage(thumbImageNormal, for: .normal)
    }

    @IBAction func myGuessButtonPressed(_ sender: Any)
    {
        /*let message = "The value is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)*/
        
        let message = "Your Guess is: \(currentValue)" + "\nThe Target value for this round was: \(targetValue)"
        
        let alert = UIAlertController(title: "Guess The Number Game", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "New Round", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderHasMoved(_ sender: Any)
    {
        print("The value of the slider is:\(slider.value)")
        currentValue = Int((slider.value))
    }
    
    func startNewRound()
    {
        targetValue = Int.random(in: 0...100)
        currentValue = Int((slider.value))
        
        updateTargetLabel()
    }
    
    func updateTargetLabel()
    {
        targetLabel.text = "\(targetValue)"
    }
    
}

