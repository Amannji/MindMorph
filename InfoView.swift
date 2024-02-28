//
//  InfoView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//


import SwiftUI

struct InfoView: View {
    var neuroTransmittersInfo = CodeDataSource.neuroTransmittersInfo
    @Binding var showInfo:Bool
    var body: some View {
        VStack {
            HStack{
                Text("Additional Information")
                    .font(.largeTitle.bold())
                Spacer()
                Button(action:{
                    showInfo = false
                }){
                    Image(systemName:"xmark")
                        .font(.title.bold())
                        .foregroundColor(.primary)
                }
            }
            .padding(30)
            ScrollView(.vertical){
                VStack{
                    
                    ZStack{
                        Circle()
                            .trim(from:0,to:0.3)
                            .stroke(Color(.systemTeal),lineWidth: 50)
                            .overlay{
                                Group{
                                    Text("30%")
                                        .foregroundColor(.white)
                                        .offset(x:-80)
                                    Text("Dopamine")
                                }
                                .offset(x:170,y:90)
                                .fontWeight(.bold)
                            }
                        Circle()
                            .trim(from:0.3,to:0.55)
                            .stroke(Color(.systemRed),lineWidth:50)
                            .overlay{
                                Group{
                                    Text("25%")
                                        .foregroundColor(.white)
                                        .offset(x:85)
                                    Text("Serotonin")
                                }
                                .offset(x:-190,y:60)
                                .fontWeight(.bold)
                            }
                        Circle()
                            .trim(from:0.55, to: 0.75)
                            .stroke(Color(.blue),lineWidth:50)
                            .overlay{
                                Group{
                                    Text("20%")
                                        .foregroundColor(.white)
                                        .offset(x:130)
                                    Text("Acetylcholine")
                                }
                                .offset(x:-200,y:-100)
                                .fontWeight(.bold)
                            }
                        
                        Circle()
                            .trim(from:0.75, to: 0.9)
                            .stroke(Color(.orange),lineWidth:50)
                            .overlay{
                                Group{
                                    Text("15%")
                                        .foregroundColor(.white)
                                        .offset(x:-60,y:10)
                                    Text("Gaba")
                                }
                                .offset(x:120,y:-120)
                                .fontWeight(.bold)
                            }
                        Circle()
                            .trim(from: 0.9, to:1)
                            .stroke(Color(.green),lineWidth:50)
                            .overlay{
                                Group{
                                    Text("10%")
                                        .foregroundColor(.white)
                                        .offset(x:-80)
                                    Text("Glutamate")
                                }
                                .offset(x:200,y:-40)
                                .fontWeight(.bold)
                            }
                        Text("Brain Health \nComposition")
                            .font(.title3.bold())
                    }
                    .frame(width:250,height:250)
                    VStack(alignment: .leading){
                        Text("Here's an overview of top 5 neurochemicals in the brain, along with brief explanations of their functions and significans:")
                            .padding()
                        ForEach(0..<5) { i in
                            NeuroTransmitterInfoBlock(name: neuroTransmittersInfo[i].name, function: neuroTransmittersInfo[i].function, significance: neuroTransmittersInfo[i].significance)
                                
                        }.padding()
                        
                    }
                    .padding(.top,50)
                }
                .padding(.top,50)
                .frame(maxWidth:.infinity)
            }
            
        }
    }
}

#Preview {
    InfoView(showInfo:.constant(true))
}

struct NeuroTransmitterInfoBlock: View {
    var name: String
    var function: String
    var significance: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(name)
                .font(.title)
                .fontWeight(.bold)
            
            Text("Function:")
                .fontWeight(.bold)
            Text(function)
            
            Text("Significance:")
                .fontWeight(.bold)
            Text(significance)
        }
    }
}

