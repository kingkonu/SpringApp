//
//  ViewController.swift
//  SpringApp
//
//  Created by Alexey Kanaev on 5/3/23.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var animationNameLabel: UILabel! {
        didSet {
            animationNameLabel.text = animation.description
        }
    }

    private var animation = Animation.randomAnimation

    @IBAction func springButton(_ sender: SpringButton) {
        animationNameLabel.text = animation.description

        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.duration = animation.duration
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.animate()

        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
}

