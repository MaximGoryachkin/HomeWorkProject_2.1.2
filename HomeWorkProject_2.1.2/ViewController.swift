//
//  ViewController.swift
//  HomeWorkProject_2.1.2
//
//  Created by Максим on 06.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 3
    
    @IBOutlet weak var firstLabel: UIView!
    @IBOutlet weak var secondLabel: UIView!
    @IBOutlet weak var thirdLabel: UIView!
    @IBOutlet weak var buttonLabel: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        view.backgroundColor = .black
        firstLabel.backgroundColor = .systemRed
        secondLabel.backgroundColor = .systemYellow
        thirdLabel.backgroundColor = .systemGreen
        buttonLabel.backgroundColor = .systemBlue

        firstLabel.layer.cornerRadius = 50
        secondLabel.layer.cornerRadius = 50
        thirdLabel.layer.cornerRadius = 50
        buttonLabel.layer.cornerRadius = 30
        
        firstLabel.alpha = 0.3
        secondLabel.alpha = 0.3
        thirdLabel.alpha = 0.3
        
        buttonLabel.titleLabel?.tintColor = .white
        buttonLabel.setTitle("START", for: .normal)
        
    }
    
    @IBAction func switchingColor(_ sender: Any) {
        
        counter += 1
        buttonLabel.setTitle("NEXT", for: .normal)
        
        if counter % 3 == 1 {
            firstLabel.alpha = 1
            thirdLabel.alpha = 0.3
        } else if counter % 3 == 2 {
            firstLabel.alpha = 0.3
            secondLabel.alpha = 1
        } else {
            secondLabel.alpha = 0.3
            thirdLabel.alpha = 1
        }
        
    }
    
}
