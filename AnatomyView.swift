//
//  AnatomyView.swift
//  MindMorph
//
//  Created by Aman Gupta on 26/02/24.
//

import SwiftUI

struct AnatomyView: View {
    @ObservedObject var scene = SceneConfigurator()
    
    var body: some View {
        VStack{
            Text("Brain Anatomy")
                .font(.largeTitle.bold())
                .foregroundColor(.white)
            SplitView{
                BrainModelView(sceneConfigurator: scene)
                    .onAppear{
                        scene.applyTexture4()
                    }
      
        
                VStack{
                    CardView{
                        NavigationStack{
                            List(CodeDataSource.parts,id:\.partName){ part in
                                NavigationLink(destination: AnatomyDetailView(part: part)){
                                    HStack{
                                        Text(part.partName)
                                            .font(.title.bold())
                                        
                                    }
                                    .padding(.vertical,10)
                                
                                }
                                
                            }
                            .listStyle(.plain)
                        }
                        
                    }
                    .frame(maxHeight:500)
                    .padding()
                    
                }
              
            }
        }
        .background(Color.black)
    }
}

#Preview {
    AnatomyView()
}


struct AnatomyDetailView: View{
    var part: Anatomy
    @ObservedObject var scene = SceneConfigurator()
    var body: some View{
        VStack{
            VStack{
                Text(part.partName)
                    .font(.largeTitle.bold())
                    .padding(.bottom,30)
                Text(part.info)
            }
            .padding()
            BrainModelView(sceneConfigurator: scene)
                .onAppear{
                    scene.applyPartTexture(partName: part.modelName)
                }
    
        }
    }
}
