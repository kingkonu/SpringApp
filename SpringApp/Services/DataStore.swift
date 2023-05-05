//
//  DataStore.swift
//  SpringApp
//
//  Created by Alexey Kanaev on 5/3/23.
//

import SpringAnimation

final class DataStore {

    static let shared = DataStore()

    let preset = AnimationPreset.allCases

    let curve = AnimationCurve.allCases

    private init() {}
}
