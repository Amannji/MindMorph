//
//  SceneConfigurator.swift
//  MindMorph
//
//  Created by Aman Gupta on 26/02/24.
//

import Foundation
import SceneKit
class SceneConfigurator: ObservableObject{
    let scene: SCNScene
    let cameraNode: SCNNode
    init(){
        guard let url = Bundle.main.url(forResource: "Brain", withExtension:"scn") else { fatalError("Couldn't find the Scene file.") }
        guard let scene = try? SCNScene(url: url) else {
                fatalError("Failed to load scene from URL: \(url)")
            }

        self.scene = scene
        self.cameraNode = SCNNode()
    }
    
    
    func start(){
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x:-1,y:2,z:10)
        scene.background.contents = UIColor(.black)
        applyTexture4()

    }
    
   
    
    func applyTexture1(){
        let textureImage = UIImage(named:"Diffuse20")
        let diffuseMaterial = SCNMaterial()
        diffuseMaterial.diffuse.contents = textureImage
        for childNode in scene.rootNode.childNodes{
            childNode.geometry?.materials = [diffuseMaterial]
        }
    }
    func applyTexture2(){
        let textureImage = UIImage(named:"Diffuse40")
        let diffuseMaterial = SCNMaterial()
        diffuseMaterial.diffuse.contents = textureImage
        for childNode in scene.rootNode.childNodes{
            childNode.geometry?.materials = [diffuseMaterial]
        }
    }
    func applyTexture3(){
        let textureImage = UIImage(named:"Diffuse60")
        let diffuseMaterial = SCNMaterial()
        diffuseMaterial.diffuse.contents = textureImage
        for childNode in scene.rootNode.childNodes{
            childNode.geometry?.materials = [diffuseMaterial]
        }
    }
    func applyTexture4(){
        let textureImage = UIImage(named:"Diffuse80")
        let diffuseMaterial = SCNMaterial()
        diffuseMaterial.diffuse.contents = textureImage
        for childNode in scene.rootNode.childNodes{
            childNode.geometry?.materials = [diffuseMaterial]
        }
    }
    
    func applyPartTexture(partName:String){
        let textureImage = UIImage(named:partName)
        let diffuseMaterial = SCNMaterial()
        diffuseMaterial.diffuse.contents = textureImage
        for childNode in scene.rootNode.childNodes{
            childNode.geometry?.materials = [diffuseMaterial]
        }
    }
    
}
