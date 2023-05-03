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

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func springButton(_ sender: SpringButton) {

        for spring in springs.shuffled() {
            springAnimationView.animation = spring.preset
            springAnimationView.curve = spring.curve
            springAnimationView.animate()

            sender.animation = "pop"
            sender.duration = 2
            sender.animate()
        }

    }

}

