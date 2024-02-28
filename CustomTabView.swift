//
//  CustomTabView.swift
//  MindMorph
//
//  Created by Aman Gupta on 25/02/24.
//

import SwiftUI

struct CustomTabView: View {
    @Binding var selectedTab:Int
    @Binding var brain:Brain
    @Binding var result: ExperimentResult
    @ObservedObject var vm: CodeViewModel
    
    var body: some View {
        VStack{
            TopTabBar(selectedTab: $selectedTab)
            TabView(selection: $selectedTab){
                CodeView()
                    .environmentObject(vm)
                    .tag(0)
                ResultView(brain: $brain, result: $result)
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
                            .frame(maxWidth:.infinity)
                    }
                    Spacer()
                    Button(action:{selectedTab = 1}){
                        Text("Results")
                            .frame(maxWidth:.infinity)
                    }
                }
                
                .font(.title)
                .foregroundColor(Color.primary)
                RoundedRectangle(cornerRadius: 10)
                    .frame(width:geometry.size.width/2,height:5)
                    .offset(x:CGFloat(-200 + selectedTab*(400)))
                    .animation(.easeInOut,value: selectedTab)
            }
            .padding(.bottom)
        }
        .frame(height:50)
    }
}
#Preview {
    CustomTabView(selectedTab: .constant(0), brain: .constant(Brain()),result: .constant(ExperimentResult(chemicalchangeFactor: ChemicalLevelsChange(dopamine: 0, serotonin: 0, acetylcholine: 0, gaba: 0, glutamate: 0),abilityChangeFactor: AbilityLevelsChange(memory: 0, attention: 0, perception: 0, emotionalRegulation: 0, executiveFunction: 0))), vm: CodeViewModel())
}
