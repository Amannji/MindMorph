//
//  SelectedBlockCell.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI

struct SelectedBlockCell: View{
    var action: Action
    var index: Int
    @EnvironmentObject var vm: CodeViewModel
    var body: some View{
        GeometryReader{ geometry in
            CardView(backgroundColor:action.color){
                HStack{
                    VStack(alignment:.leading){
                        Text(action.code)
                            .font(.system(size: 25, weight: .bold))
                    }
                    .foregroundColor(.white)
                    Spacer()
                    Image(systemName:"xmark")
                        .font(.system(size:25,weight:.bold))
                        .foregroundColor(.white)
                        .onTapGesture {
                            vm.remove(index: index)
                        }
                }
            }
        }
    }
}
#Preview {
    SelectedBlockCell(action:CodeDataSource.food.actions[0], index: 1)
}
