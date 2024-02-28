//
//  ProgressView.swift
//  
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI

struct ProgressView: View {
    var text: String
    var progress: Float
    var change: Int?
        
    var body: some View {
        GeometryReader{ geometry in
            HStack{
                Text(text)
                    .font(.title.bold())
                    .fixedSize(horizontal: false, vertical: true)

                    
                    
                
            
                
                HStack(alignment: .center){
                    Spacer()
                    ZStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color(.green))
                            .opacity(0.2)
                            .frame(width: geometry.size.width/3,height:16)
                    
                        
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .fill(Color.green)
                            .frame(width: geometry.size.width/3*CGFloat(progress),height:16)
                    }
                    
                    Text(String(format:"%.0f%%",progress*100))
                        .font(.title3.bold())
                        .frame(width:50)
                    HStack{
                        Image(systemName: "triangle.fill")
                            .rotationEffect( change! >= 0 ? .degrees(0) : .degrees(180))
                        Text(String(abs(change ?? 0)))
                            .font(.title3.bold())
                            .frame(width:30)
                    }
                    .foregroundColor(change! > 0 ? .green : .red)
                    .opacity(change != 0 ? 1: 0)
                }
  

            }
            
        }
        
    }
    
    
}


#Preview {
    ProgressView(text:"Dopamine",progress:0.3,change:20)
}
