//
//  ResultView.swift
//  MindMorph
//
//  Created by Aman Gupta on 18/02/24.
//

import SwiftUI

struct ResultView: View {
    var body: some View {
        ScrollView{
            VStack{
                CardView{
                    Text("NeuroChemical Composition Score")
                        .font(.title)
                    ForEach(1...3,id:\.self){_ in
                        Stat(text:"Dopamine",progress:30)
                    }
                }
                
                CardView{
                    Text("Mental Abilities Score")
                        .font(.title)
                    ForEach(1...3,id:\.self){_ in
                        Stat(text:"Focus",progress:10)
                        
                    }
                }
            }
        }
        .frame(width: UIScreen.main.bounds.width / 2)
    }
}

#Preview {
    ResultView()
}

struct Stat: View{
    var text: String
    var progress: Int
    var body: some View{
        HStack{
            Text(text)
                .font(.largeTitle)
            Spacer()
            ZStack{
                Circle()
                    .stroke(Color(.systemGray6),lineWidth: 10)
                    .frame(width:100)
                Circle()
                    .trim(from:0,to:CGFloat(Double(progress) * 0.01))
                    .stroke(Color(.systemGreen),lineWidth:10)
                    .rotationEffect(.degrees(-90))
                    .frame(width:100)
                    .overlay{
                        Text("\(progress)%")
                            .font(.title)
                    }
            }
        }
        
        .padding(.horizontal,50)
    }
}

