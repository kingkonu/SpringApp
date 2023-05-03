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
        springAnimationView.animation = "pop"
        springAnimationView.curve = "easeIn"
        springAnimationView.animate()

        sender.animation = "pop"
        sender.duration = 3
        sender.animate()
    }

}

