//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by STEFAN BEHRENDT on 31.03.15.
//  Copyright (c) 2015 DSP-Partners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTigers.append(myTiger)
        
        println("My Tiger's name is: \(myTiger.name), it's age is: \(myTiger.age), it's breed is: \(myTiger.breed) and it's image is \(myTiger.image)")
        
        // 1st Tiger
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed

        // 2nd Tiger
        var secondTiger = Tiger()
        secondTiger.name = "Jacob"
        secondTiger.breed = "Malayan Tiger"
        secondTiger.age = 4
        secondTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        // 3rd Tiger
        var thirdTiger = Tiger()
        thirdTiger.name = "Tigress"
        thirdTiger.breed = "Indochine Tiger"
        thirdTiger.age = 2
        thirdTiger.image = UIImage(named: "IndochineseTiger.jpg")

        // 4th Tiger
        var fourthTiger = Tiger()
       fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 2
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
    
    let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        let tiger = myTigers[randomIndex]
        
    //    myImageView.image = tiger.image
    //    nameLabel.text = tiger.name
    //    ageLabel.text = "\(tiger.age)"
    //   breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations:
            {
                self.myImageView.image = tiger.image
                self.nameLabel.text = tiger.name
                self.ageLabel.text = "\(tiger.age)"
                self.breedLabel.text = tiger.breed
            }, completion: { (finished: Bool) -> () in
        })
        
        
    
    }
    
}

