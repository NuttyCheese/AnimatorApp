//
//  Model.swift
//  AnimatorApp
//
//  Created by Борис Павлов on 06.05.2022.
//

import Spring

struct Animations {
    
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    let delay: Float
    
    static func runAnimationsRandom() -> Animations {
        Animations(
            preset: DataManager.data.animations.randomElement()?.rawValue ?? "shake",
            curve: DataManager.data.curve.randomElement()?.rawValue ?? "spring",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: 0.5)
    }
}
