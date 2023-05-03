//
//  ViewController.swift
//  SpringApp
//
//  Created by Alexey Kanaev on 5/3/23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    private let springs = Spring.getAnimation()

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var animationNameLabel: UILabel!
    @IBOutlet weak var curveNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.animation = "pop"
        animationNameLabel.text = "Pop"
        springAnimationView.curve = "easeIn"
        curveNameLabel.text = "easeIn"
    }

    @IBAction func springButton(_ sender: SpringButton) {

        for spring in springs.shuffled() {
            animationNameLabel.text = spring.preset
            curveNameLabel.text = spring.curve
            sender.setTitle(spring.preset, for: .normal)

            springAnimationView.animation = spring.preset
            springAnimationView.curve = spring.curve
            springAnimationView.animate()

            sender.animation = "pop"
            sender.duration = 2
            sender.animate()
        }

    }

}

