//
//  Model.swift
//  SpringApp
//
//  Created by Alexey Kanaev on 5/3/23.
//


struct Animation: CustomStringConvertible {

    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double

    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        forse: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }

    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.preset.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.curve.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.8...1.6),
            delay: 1
        )
    }
}
