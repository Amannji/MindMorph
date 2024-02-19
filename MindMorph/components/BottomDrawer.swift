//
//  BottomDrawer.swift
//  MindMorph
//
//  Created by Aman Gupta on 12/02/24.
//

import SwiftUI

struct BottomDrawer<Content>:View where Content: View {
    @State var dragOffset:Int = .zero
    @ViewBuilder var content: ()-> Content
    var body: some View {
        VStack{
//            content()
            HStack{
                Text("Exercise")
                Text("Food")
                Text("Sleep")
                Text("Entertainment")
                
                
                     
            }
        }
        .offset(y:10)
    }
}

#Preview {
    BottomDrawer{
        Text("Hello")
    }
}
