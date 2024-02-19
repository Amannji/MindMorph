//
//  TabView.swift
//  MindMorph
//
//  Created by Aman Gupta on 18/02/24.
//

import SwiftUI

struct CustomTabView: View {
    @State var selectedTab:Int = 0
    @StateObject var vm = CodeViewModel()
    var body: some View {
        VStack{
            TopTabBar(selectedTab: $selectedTab)
            TabView(selection: $selectedTab){
                CodeView()
                    .environmentObject(vm)
                    .tag(0)
                ResultView()
                    .tag(1)
                    
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut,value:selectedTab)
        }
        
    }
}


struct TopTabBar: View{
    @Binding var selectedTab:Int
    var body: some View{
        GeometryReader{ geometry in
            VStack{
                HStack{
                    Button(action:{selectedTab = 0}){
                        Text("Code")
                    }
                    Spacer()
                    Button(action:{selectedTab = 1}){
                        Text("Results")
                    }
                }
                .padding(.horizontal,100)
                .font(.title)
                .foregroundColor(Color.primary)
                
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:geometry.size.width/2,height:5)
                    .offset(x:CGFloat(-200 + selectedTab*(400)))
                    .animation(.easeInOut,value: selectedTab)
            }
            
        }
        .frame(width:UIScreen.main.bounds.width/2, height:50)
    }
}
#Preview {
    CustomTabView()
}
