//
//  CodeActionTab.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI
struct CodeActionTab: View{
    var action: Action
    @EnvironmentObject var vm:CodeViewModel
    var body: some View{
        Button(action: {vm.append(action:action)}){
        RoundedRectangle(cornerRadius: 5)
            .fill(action.color)
            .frame(width:CGFloat(action.code.count*15),height:40)
            .overlay{
                Text(action.code)
                    .foregroundColor(.white)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
            }
        }
    }
}
#Preview {
    CodeActionTab(action:CodeDataSource.food.actions[0])
}
