//
//  Model.swift
//  SpringApp
//
//  Created by Alexey Kanaev on 5/3/23.
//

import Foundation

struct Spring {
    let preset: String
    let curve: String
//    let force: Double
//    let duration: Double
//    let delay: Double

    static func getAnimation() -> [Spring] {

        var springAnimations: [Spring] = []

        let presets = DataStore.shared.preset.shuffled()
        let curves = DataStore.shared.curve.shuffled()

        let iterationCount = min(presets.count, curves.count)


        for index in 0..<iterationCount {
            let animation = Spring(preset: presets[index], curve: curves[index])
            springAnimations.append(animation)
        }
        return springAnimations
    }
}
