//
//  ViewController.swift
//  practiceAR
//
//  Created by 中野湧仁 on 2018/12/31.
//  Copyright © 2018年 中野湧仁. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        let text = SCNText(string: "謹賀新年", extrusionDepth: 10)
        
//        画数多い文字
//        龗鱻麤籲龖厵韊鸝纞讟钃钄鸜
        
        let material = SCNMaterial()
        material.diffuse.contents = UIColor.red
        
        text.materials = [material]
        
        let node = SCNNode()
        node.position = SCNVector3(0, 0.02, -0.2)
        node.scale = SCNVector3(0.05, 0.05, 0.05)
        node.geometry = text
        
        sceneView.scene.rootNode.addChildNode(node)
        sceneView.autoenablesDefaultLighting = true
        
        
        


        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    
    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
}
