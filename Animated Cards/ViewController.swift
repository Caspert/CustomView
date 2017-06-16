//
//  ViewController.swift
//  Animated Cards
//
//  Created by Casper Biemans on 21-03-17.
//  Copyright © 2017 Casper Biemans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var architectView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        self.view.backgroundColor = UIColor.red
        
//        architectView = UIView(frame: self.view.bounds)
//        self.view.addSubview(architectView)
//        architectView.backgroundColor = UIColor.red
//        
//        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(gestureRecognizer:)))
//        architectView.addGestureRecognizer(gestureRecognizer)
        

        let cardView = CardView()
        self.view.addSubview(cardView)
        
        // Style cardView instance
        cardView.view.backgroundColor = UIColor.yellow
        cardView.view.center.x = self.view.center.x
        cardView.view.center.y = self.view.center.y
        cardView.isUserInteractionEnabled = true
        cardView.view.isUserInteractionEnabled = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap(gestureRecognizer:)))
        cardView.view.addGestureRecognizer(tapGesture)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tapped(sender: UITapGestureRecognizer){
//        print("image pressed \(sender) \(sender.view)")
        print("Tapped!")
    }
    
    func handleTap(gestureRecognizer: UIGestureRecognizer) {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}


