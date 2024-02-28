//
//  CodeBlockCell.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI

struct CodeBlockCell: View{
    var action: Action
    @EnvironmentObject var vm: CodeViewModel
    var body: some View{
        CardView(backgroundColor:action.color){
            HStack{
                VStack(alignment:.leading){
                    Text(action.code)
                        .font(.system(size: 30, weight: .bold))
                    Text(action.description)
                        .font(.title)
                    HStack(spacing:15){
                        Text("D: \(action.chemicalChange.dopamine)")
                        Text("S: \(action.chemicalChange.serotonin)")
                        Text("A: \(action.chemicalChange.acetylcholine)")
                        Text("GA: \(action.chemicalChange.gaba)")
                        Text("GL: \(action.chemicalChange.glutamate)")
                    }
                    .font(.title2)
                    .fontWeight(.black)
                    .padding(.top,4)

                }
                .foregroundColor(.white)
                Spacer()
                Button{
                    vm.append(action:action)
                }
            label:{
                Image(systemName:"plus.circle")
                    .font(.system(size:40,weight:.bold))
                    .foregroundColor(.white)
            }
            }
            
        }
    }
}

#Preview {
    CodeBlockCell(action: CodeDataSource.food.actions[0])
}
