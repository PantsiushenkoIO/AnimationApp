//
//  ViewController.swift
//  AnimationApp
//
//  Created by 18992227 on 21.06.2021.
//

import UIKit
import Foundation

// carthage
// cocoa pods
// swift package

// sudo gem install cocoapods

// cd project_path

// pod init

// редактируем podfile

// pod install

class ViewController: UIViewController {
    @IBOutlet weak var animationView: UIView!
    
    private var originCoordinate: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        originCoordinate = animationView.frame.origin.x
    }
    
    @IBAction func tappedRunAnimationButton(_ sender: UIButton) {
        sender.pulsate()
        
        animationView.frame.origin.x = originCoordinate ?? animationView.frame.origin.x
        
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat],
            animations: {
                if self.animationView.frame.origin.x == self.originCoordinate {
                    self.animationView.frame.origin.x -= 40
                } else {
                    self.animationView.frame.origin.x += 40
                }
            }
        )
    }
}

