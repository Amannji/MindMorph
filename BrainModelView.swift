//
//  BrainModelView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//



import SwiftUI
import UIKit
import SceneKit
    
    struct BrainModelView: View {
        @ObservedObject var sceneConfigurator: SceneConfigurator
        var body: some View {
            ZStack{
                SceneView(scene: sceneConfigurator.scene,pointOfView: sceneConfigurator.cameraNode, options: [.allowsCameraControl], preferredFramesPerSecond: 120)
                    .onAppear{
                        sceneConfigurator.start()
                    }
            }
            .ignoresSafeArea()
        }
            
        
    }
    
struct BrainModelView_Previews: PreviewProvider {
    static var previews: some View {
        let scene = SceneConfigurator() // Mock or simplified scene
        BrainModelView(sceneConfigurator: scene)
    }
}
    
    
    struct TabButton: View{
        var text: String
        var mainFunc: () -> Void
        var body: some View{
            Button{
                mainFunc()
            }
        label:{
            Text(text)
                .foregroundColor(.black)
            
        }
        .padding()
        .background(.white)
        .cornerRadius(10)
        .offset(y:UIScreen.main.bounds.height/3)
        }
    }

