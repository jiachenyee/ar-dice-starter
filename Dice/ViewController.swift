//
//  ViewController.swift
//  Dice
//
//  Created by Jia Chen on 29/7/22.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        boxAnchor.actions.throwDice.onAction = { entity in
            
            // MARK: Get the Dice from the entity
//            let dice = entity as! HasPhysics

            // MARK: Set the physics mode to be dynamic
//            dice.physicsBody?.mode = .kinematic

            // MARK: Spin the dice by a random value in the X, Y and Z axis
//            dice.physicsMotion?.angularVelocity = [
//                Float.random(in: 0 ..< 4 * .pi),
//                Float.random(in: 0 ..< 4 * .pi),
//                Float.random(in: 0 ..< 4 * .pi)
//            ]

            // MARK: Throw the dice up by 1 in the Y-axis
//            dice.physicsMotion?.linearVelocity = [0, 1, 0]

            // MARK: After 0.5s make the dice fall back down
//            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in dice.physicsBody?.mode = . dynamic dice.physicsMotion?.angularVelocity = [0, 0, 0]
//                dice.physicsMotion?.linearVelocity = [0, 0, 0]
//            }
        }
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
    }
}
