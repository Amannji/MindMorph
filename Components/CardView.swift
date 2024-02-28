//
//  SwiftUIView.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//


import SwiftUI

struct CardView<Content>:View where Content: View {
    var backgroundColor : Color = Color(UIColor.systemBackground)
    @ViewBuilder var content: () -> Content
    var body: some View {
        
        VStack{
            content()
                .padding(50)
            
        }
        .background{
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundColor)
                .shadow(color: Color.black.opacity(0.3),radius: 12, x: 0, y: 8)
                .padding()
        }
    }
}

#Preview {
    CardView{
        Text("Wow, you look amazing")
            
    }
}

