//
//  ViewController.swift
//  AnimatorApp
//
//  Created by Борис Павлов on 06.05.2022.
//

import Spring
import CoreGraphics

class ViewController: UIViewController {

    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var presetSpringLabel: SpringLabel! //название
    @IBOutlet weak var curveSpringLabel: SpringLabel! //кривизна
    @IBOutlet weak var forceSpringLabel: SpringLabel! //сила
    @IBOutlet weak var durationSpringLabel: SpringLabel! //продолжительность
    @IBOutlet weak var delaySpringLabel: SpringLabel! //задержка
    
    private var animation = Animations.runAnimationsRandom()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsOutletsInView()
    }

    @IBAction func runAnimation(_ sender: SpringButton) {
        springView.animation = animation.preset
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.duration = CGFloat(animation.duration)
        springView.delay = CGFloat(animation.delay)
        springView.animate()
        
        animation = Animations.runAnimationsRandom()
        sender.setTitle("\(springView.animation)", for: .normal)
        
        presetSpringLabel.text = "preset: \(springView.animation)"
        curveSpringLabel.text = "curve: \(springView.curve)"
        forceSpringLabel.text = "force: \(String(format: "%.02f", springView.force))"
        durationSpringLabel.text = "duration: \(String(format: "%.02f", springView.duration))"
        delaySpringLabel.text = "delay: \(springView.delay)"
    }
    
    private func settingsOutletsInView() {
        
        presetSpringLabel.text = "preset"
        curveSpringLabel.text = "curve"
        forceSpringLabel.text = "force"
        durationSpringLabel.text = "duration"
        delaySpringLabel.text = "delay"
    }
}

