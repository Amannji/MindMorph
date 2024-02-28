//
//  WelcomeView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI


struct WelcomeView: View {
    
    @State private var title = " "
    @State private var showBrainImage: Bool = false
    @State private var showMorphBtn: Bool = false
    @State private var index: Int = 0
    @ObservedObject var scene = SceneConfigurator()

    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationStack{
            GeometryReader { geometry in
                let width = geometry.size.width
                let height = geometry.size.height
                let brainSize = min(width,height)
                ZStack {
                    RadialGradient(colors: [Color.clear, Color("lightpink")], center: .center, startRadius: brainSize/3, endRadius: 0)
                        .opacity(showMorphBtn ? 0.4 : 0)
                        .edgesIgnoringSafeArea(.all)
                    VStack(spacing:1){
                        Spacer()
                        Text(title)
                            .foregroundColor(.white)
                            .font(.largeTitle.bold())
                            .padding(.vertical,100)
                            .onReceive(timer){ output in
                                let fullStr = "MindMorph"
                                if index < fullStr.count{
                                    let letter = fullStr[fullStr.startIndex...fullStr.index(fullStr.startIndex, offsetBy: index)]
                                    self.title = "\(letter)"
                                    index+=1
                                    
                                }
                                else{
                                    withAnimation{
                                        showBrainImage = true
                                    }
                                }
                                
                            }
                        Spacer()
                        if showBrainImage{
                            NavigationLink(destination: AnatomyView()){
                                Image("brain")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:brainSize/2)
                                    .transition(.opacity.animation(.easeOut(duration:1)))
                                    .onAppear{
                                        withAnimation(.easeOut(duration: 1).delay(1)){
                                            showMorphBtn = true
                                        }
                                    }
                            }
                            
                        }
                        else{
                            Image("brain")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:brainSize/2)
                                .opacity(0)
                        }

                        NavigationLink(destination: ExperimentView()){
                            HStack{
                                Image(systemName: "brain.fill")
                                Text("MORPH")
                            }
                            .font(.title)
                            .foregroundColor(Color("lightpink"))
                            .padding(.vertical,100)
                            .opacity(showMorphBtn ? 1 : 0)
                        }
                    Spacer()
                    }
                    
                    
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity)
                .background(Color.black)
                .ignoresSafeArea()
            }
           
            
            
        }
       
    }
}

#Preview {
    WelcomeView()
}
