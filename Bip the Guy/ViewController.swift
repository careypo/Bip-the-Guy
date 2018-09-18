//
//  ViewController.swift
//  Bip the Guy
//
//  Created by Paige Carey on 9/18/18.
//  Copyright © 2018 Paige Carey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: properties
    @IBOutlet weak var imageToPunch: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: functions
    func animateImage() {
        let bounds = self.imageToPunch.bounds
        let skrinkValue: CGFloat = 60
        
        //skrink imageToPunch by 60 pixels
        self.imageToPunch.bounds = CGRect(x: self.imageToPunch.bounds.origin.x + skrinkValue, y: self.imageToPunch.bounds.origin.y + skrinkValue, width: self.imageToPunch.bounds.size.width - skrinkValue, height: self.imageToPunch.bounds.size.height - skrinkValue)
        
        UIView.animate(withDuration: 0.25, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 10, options: [], animations: { self.imageToPunch.bounds = bounds}, completion: nil)
    }
    
    
    //MARK: actions
    @IBAction func libraryPressed(_ sender: UIButton) {
    }
    
    @IBAction func photoPressed(_ sender: UIButton) {
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        animateImage()
    }
    
}

