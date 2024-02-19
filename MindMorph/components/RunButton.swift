//
//  RunButton.swift
//  MindMorph
//
//  Created by Aman Gupta on 18/02/24.
//

import SwiftUI

struct RunButton: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(Color.secondary)
            .frame(width:300, height:100)
            .overlay{
                HStack(spacing:10){
                    Image(systemName: "arrowtriangle.right.fill")
                        .foregroundColor(.white)
                    Text("Run My Code")
                        .foregroundColor(.white)
                }
                .font(.title)
            }
    }
}

#Preview {
    RunButton()
}
