//
//  DataManager.swift
//  AnimatorApp
//
//  Created by Борис Павлов on 06.05.2022.
//

import Spring

class DataManager {
    
    static let data = DataManager()
    
    let animations: [Spring.AnimationPreset] = [
        .slideLeft,
        .slideRight,
        .slideDown,
        .slideUp,
        .squeezeLeft,
        .squeezeRight,
        .squeezeDown,
        .squeezeUp,
        .fadeIn,
        .fadeOut,
        .fadeOutIn,
        .fadeInLeft,
        .fadeInRight,
        .fadeInDown,
        .fadeInUp,
        .zoomIn,
        .zoomOut,
        .fall,
        .shake,
        .pop,
        .flipX,
        .flipY,
        .morph,
        .squeeze,
        .flash,
        .wobble,
        .swing,
    ]
    
    let curve = Spring.AnimationCurve.allCases
    
    private init() {}
}
