//
//  ExperimentView.swift
//  MindMorph
//
//  Created by Aman Gupta on 10/02/24.
//

import SwiftUI

struct ExperimentView: View {
    
    var health:Int = 50
    var body: some View {
        SplitView{
//            CodeView()
//                .environmentObject(vm)
//            ResultView()
            CustomTabView()
            ZStack(alignment:.bottom){
                
                BrainModelView()
                    .overlay{
                        Text("Brain Health: \(health)%")
                            .font(.largeTitle)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .offset(y:-400)
                    }
                RunButton()
            }
                
        }
        
    }
}

#Preview {
    ExperimentView()
}
