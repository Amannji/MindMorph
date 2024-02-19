//
//  CodeBlockCell.swift
//  MindMorph
//
//  Created by Aman Gupta on 18/02/24.
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
