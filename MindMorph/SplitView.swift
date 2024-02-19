//
//  SplitView.swift
//  MindMorph
//
//  Created by Aman Gupta on 10/02/24.
//

import SwiftUI

struct SplitView<Content>: View where Content: View {
    @ViewBuilder var content: ()-> Content
    var body: some View {
        GeometryReader { geometry in
            if geometry.size.width > geometry.size.height{
                HStack{
                    content()
                }
            }
            else{
                VStack{
                    content()
                }
            }
            
        }
    }
}


